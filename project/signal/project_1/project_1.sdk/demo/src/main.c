

//===================================== Header =====================================
//
#include <stdio.h>
#include "platform.h"
#include "sleep.h"

#include "xil_printf.h"

#include "uart_init.h"
#include "crc.h"
#include "sleep.h"
#include "xbpnn.h"
#include "xbpnn_hw.h"
#include "num_extraction.h"

#include "bmp_init0.h"
#include "bmp_init1.h"
#include "bmp_init2.h"
#include "bmp_init3.h"
#include "bmp_init4.h"
#include "bmp_init5.h"
#include "bmp_init6.h"
#include "bmp_init7.h"
#include "bmp_init8.h"
#include "bmp_init9.h"
#include "bmp_init_good.h"
#include "bmp_init_me.h"
#include "bmp_init_you.h"
#include "bmp_init_ok.h"
#include "bmp_init_welcome01.h"

#define  CTRL  (*(volatile unsigned int *) 0x41200000 )

//===================================== Definition =====================================
//
//------------- variables -------------
//
int Cnt_Received = 0;			//Counter for Sending and Receiving
int sign = 0;					//Receiving Complete Sign
int len = 0;					//Length of Received Data
u8 RecvChar[100] = "";			//Char array for receiving data
unsigned short CRC_CAL = 0;		//Calculated CRC value
unsigned short CRC_RECV = 0;	//Received CRC value
unsigned int begin, end = 0;	//Payload data begin and end position
u32 Thu, Ind, Mid, Rin, Lit, ACC_X, ACC_Y, ACC_Z = 0;

//------------- state_clear() -------------
//clear all variable used within transmission
void state_clear();

unsigned int float_to_u32(float val)
{
	unsigned int result;
	union float_bytes{
		float v;
		unsigned char bytes[4];
	}data;
	data.v = val;
	result = (data.bytes[3] <<24) + (data.bytes[2] <<16) + (data.bytes[1] <<8) + (data.bytes[0]);
	return result;
}

float u32_to_float(unsigned int val)
{
	unsigned int result;
	union {
		float val_float;
		unsigned char bytes[4];
	}data;
	data.bytes[3] = (val >>(8*3)) &0xff;
	data.bytes[2] = (val >>(8*2)) &0xff;
	data.bytes[1] = (val >>(8*1)) &0xff;
	data.bytes[0] = (val >>(8*0)) &0xff;
	return data.val_float;
}


//===================================== Main Function =====================================
//
int main()
{
	u8 value;
	int i;
	XBpnn XBpnn_Inst;
	int count = 0;




	XBpnn_Initialize(&XBpnn_Inst, XPAR_BPNN_0_DEVICE_ID);

	//------------- PS UART0 & UART1 Initialization -------------
	//
	UART_PS_init(&Uart0_PS, XPAR_PS7_UART_0_DEVICE_ID);
	UART_PS_init(&Uart1_PS, XPAR_PS7_UART_1_DEVICE_ID);


	//------------- Main While Cycle -------------
	//
	while( 1 )
	{
		i = (int) CTRL;


		//1. Wait until data occur
		while (!XUartPs_IsReceiveData(Uart0_Config->BaseAddress)) continue;

		//2. If any data occur, read data from fifo. Go down to next segment until data is 0x5a which means the packet header
		RecvChar[Cnt_Received] = XUartPs_ReadReg(Uart0_Config->BaseAddress, XUARTPS_FIFO_OFFSET);
		if( Cnt_Received == 0 && RecvChar[Cnt_Received] != 0x5a ) continue;

		//3. begin & length acquire, 0x2c = ','
		if(RecvChar[Cnt_Received] == 0x2c) {
			begin = Cnt_Received + 1;
			for(int i = 1 ; i < Cnt_Received; i++)
				len = len*10 + RecvChar[i] - 48;
		}

		//4. end acquire, 0x3bc = ';'ps

		if(RecvChar[Cnt_Received] == 0x3b)	end = Cnt_Received - 1;

		//5. end acquire, 0x3bc = ';'
		Cnt_Received++;

		//6. calculate CRC and compare
		if(Cnt_Received == len && Cnt_Received !=0){ //All data has been received to RecvChar;
			for(int i = end + 2; i < len; i++)
				CRC_RECV = CRC_RECV*10 + RecvChar[i] - 48;
			CRC_CAL = CRC16_CCITT_FALSE( &RecvChar[begin],  end - begin + 1 );

			if(CRC_CAL != CRC_RECV) {
				state_clear();

			}
			else sign = 1; //Enable Sending
		}

		//7. send data
		if( sign == 1 ){

			Num_Extraction(RecvChar, len, &Thu, &Ind, &Mid, &Rin, &Lit, &ACC_X, &ACC_Y, &ACC_Z);
			printf("%ld	%ld	%ld	%ld	%ld	%ld	%ld	%ld\n", Thu, Ind, Mid, Rin, Lit, ACC_X, ACC_Y, ACC_Z);

			float Thu_1 	= 2*(Thu - 5281)/(float)17939 - 1;//0.409345794392523 	;
			float Ind_1 	= 2*(Ind - 9828)/(float)19542 - 1;//0.554863695041385 	;
			float Mid_1 	= 2*(Mid - 10091)/(float)15568 - 1;//0.409830411037655 	;
			float Rin_1 	= 2*(Rin - 10622)/(float)27251 - 1;//0.444459969260864 	;
			float Lit_1 	= 2*(Lit - 35709)/(float)46149 - 1;//0.225686986149174 	;
			float ACC_X_1 	= 2*(ACC_X + 435)/(float)1398 - 1;//0.482051282051282 	;
			float ACC_Y_1 	= 2*(ACC_Y - 193)/(float)875 - 1;//0.0623946037099494	;
			float ACC_Z_1 	= 2*(ACC_Z + 675)/(float)1404 - 1;//0.0910569105691057	;

			//printf("Normalized : %f	%f	%f	%f	%f	%f	%f	%f\n", Thu_1, Ind_1, Mid_1, Rin_1, Lit_1, ACC_X_1, ACC_Y_1, ACC_Z_1);

			XBpnn_Set_Thu_V(&XBpnn_Inst, float_to_u32(Thu_1));
			XBpnn_Set_Ind_V(&XBpnn_Inst, float_to_u32(Ind_1));
			XBpnn_Set_Mid_V(&XBpnn_Inst, float_to_u32(Mid_1));
			XBpnn_Set_Lit_V(&XBpnn_Inst, float_to_u32(Lit_1));
			XBpnn_Set_Rin_V(&XBpnn_Inst, float_to_u32(Rin_1));
			XBpnn_Set_ACC_X_V(&XBpnn_Inst, float_to_u32(ACC_X_1));
			XBpnn_Set_ACC_Y_V(&XBpnn_Inst, float_to_u32(ACC_Y_1));
			XBpnn_Set_ACC_Z_V(&XBpnn_Inst, float_to_u32(ACC_Z_1));


			XBpnn_Start(&XBpnn_Inst);

			while(!XBpnn_IsDone(&XBpnn_Inst)) ;
			value = (u8)XBpnn_Get_return(&XBpnn_Inst)-1;
			printf("Result : %d\n", value);



			state_clear();

		}

		count++;

					if(count >= 200){
						if(i == 0){
									VGA_ShowBMP_640x480(bmp_init_welcome01);
								//	printf("Welcome to use this system!!!");
								}else{

					switch((int)value)
					    {
						case 0 :  VGA_ShowBMP_640x480(bmp_init0);break;
					    case 1 :  VGA_ShowBMP_640x480(bmp_init1);break;
					    case 2 :  VGA_ShowBMP_640x480(bmp_init2);break;
					    case 3 :  VGA_ShowBMP_640x480(bmp_init3);break;
					    case 4 :  VGA_ShowBMP_640x480(bmp_init4);break;
					    case 5 : VGA_ShowBMP_640x480(bmp_init5);break;
					    case 6 : VGA_ShowBMP_640x480(bmp_init6);break;
					    case 7 : VGA_ShowBMP_640x480(bmp_init7);break;
					    case 8: VGA_ShowBMP_640x480(bmp_init8);break;
					    case 9: VGA_ShowBMP_640x480(bmp_init9);break;
					    case 10 :  VGA_ShowBMP_640x480(bmp_init_you);break;
					    case 11 :  VGA_ShowBMP_640x480(bmp_init_me);break;
					    case 12 :  VGA_ShowBMP_640x480(bmp_init_good);break;
					    case 13 :  VGA_ShowBMP_640x480(bmp_init_ok);break;
					    default :VGA_ShowBMP_640x480(bmp_init_welcome01);break;

					    }
								}
					count = 0;
					state_clear();
					}

	}

	return 0;
}


//===================================== state_clear() =====================================
//
void state_clear(){
	Cnt_Received = 0;
	sign = 0;
	len = 0;
	memset(RecvChar, 0, sizeof(RecvChar)); //Empty Buffer_Received.
	CRC_RECV = 0;
	CRC_CAL = 0;
	begin = 0;
	end = 0;
	Thu = 0;
	Ind = 0;
	Mid = 0;
	Rin = 0;
	Lit = 0;
	ACC_X = 0;
	ACC_Y = 0;
	ACC_Z = 0;
}


