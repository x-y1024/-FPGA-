/*
 * uart_init.h
 *
 *  Created on: 2018Äê5ÔÂ20ÈÕ
 *      Author: majin
 */

#ifndef SRC_UART_INIT_H_
#define SRC_UART_INIT_H_

#include "xuartps.h"
#include "xil_printf.h"

static XUartPs Uart0_PS, Uart1_PS;	//Uart Instance
XUartPs_Config *Uart0_Config, *Uart1_Config;

int UART_PS_init(XUartPs *Uart_PS, int UART_ID );
void Send(u8 *Data, unsigned int begin, unsigned int end);

#endif /* SRC_UART_INIT_H_ */
