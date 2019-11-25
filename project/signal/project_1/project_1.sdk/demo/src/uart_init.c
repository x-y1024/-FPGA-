/*
 * uart_init.c
 *
 *  Created on: 2018Äê5ÔÂ20ÈÕ
 *      Author: majin
 */

#include "uart_init.h"

int UART_PS_init(XUartPs *Uart_PS, int UART_ID ){
	int xStatus = 0;

	if(UART_ID == 0){
		Uart0_Config = XUartPs_LookupConfig( XPAR_PS7_UART_0_DEVICE_ID );
		if( Uart0_Config == NULL )	return XST_FAILURE;
		xStatus = XUartPs_CfgInitialize( Uart_PS, Uart0_Config, Uart0_Config->BaseAddress );
		return xStatus;
		/*
		//if( xStatus == XST_SUCCESS )	print("Init Complete\n\r");
		//else print( "UART0 INIT FAILED \n\r" );
		 */
	}

	if(UART_ID == 1){
		Uart1_Config = XUartPs_LookupConfig( XPAR_PS7_UART_1_DEVICE_ID );
		if( Uart1_Config == NULL )	return XST_FAILURE;
		xStatus = XUartPs_CfgInitialize( Uart_PS, Uart1_Config, Uart1_Config->BaseAddress );
		return xStatus;
		/*
		//if( xStatus == XST_SUCCESS )	print("Init Complete\n\r");
		//else print( "UART1 INIT FAILED \n\r" );
		*/

	}

}

void Send(u8 *Data, unsigned int begin, unsigned int end){
	for( int Cnt_Sent = begin; Cnt_Sent <= end; Cnt_Sent++ )
	XUartPs_WriteReg(Uart1_Config->BaseAddress,  XUARTPS_FIFO_OFFSET, Data[Cnt_Sent]);
}
