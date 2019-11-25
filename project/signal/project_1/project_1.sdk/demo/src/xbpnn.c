// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.3
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xbpnn.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XBpnn_CfgInitialize(XBpnn *InstancePtr, XBpnn_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrls_BaseAddress = ConfigPtr->Ctrls_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XBpnn_Start(XBpnn *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBpnn_ReadReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_AP_CTRL) & 0x80;
    XBpnn_WriteReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XBpnn_IsDone(XBpnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBpnn_ReadReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XBpnn_IsIdle(XBpnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBpnn_ReadReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XBpnn_IsReady(XBpnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBpnn_ReadReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XBpnn_EnableAutoRestart(XBpnn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBpnn_WriteReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_AP_CTRL, 0x80);
}

void XBpnn_DisableAutoRestart(XBpnn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBpnn_WriteReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_AP_CTRL, 0);
}

u32 XBpnn_Get_return(XBpnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBpnn_ReadReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_AP_RETURN);
    return Data;
}
void XBpnn_Set_Thu_V(XBpnn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBpnn_WriteReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_THU_V_DATA, Data);
}

u32 XBpnn_Get_Thu_V(XBpnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBpnn_ReadReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_THU_V_DATA);
    return Data;
}

void XBpnn_Set_Ind_V(XBpnn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBpnn_WriteReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_IND_V_DATA, Data);
}

u32 XBpnn_Get_Ind_V(XBpnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBpnn_ReadReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_IND_V_DATA);
    return Data;
}

void XBpnn_Set_Mid_V(XBpnn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBpnn_WriteReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_MID_V_DATA, Data);
}

u32 XBpnn_Get_Mid_V(XBpnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBpnn_ReadReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_MID_V_DATA);
    return Data;
}

void XBpnn_Set_Rin_V(XBpnn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBpnn_WriteReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_RIN_V_DATA, Data);
}

u32 XBpnn_Get_Rin_V(XBpnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBpnn_ReadReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_RIN_V_DATA);
    return Data;
}

void XBpnn_Set_Lit_V(XBpnn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBpnn_WriteReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_LIT_V_DATA, Data);
}

u32 XBpnn_Get_Lit_V(XBpnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBpnn_ReadReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_LIT_V_DATA);
    return Data;
}

void XBpnn_Set_ACC_X_V(XBpnn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBpnn_WriteReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_ACC_X_V_DATA, Data);
}

u32 XBpnn_Get_ACC_X_V(XBpnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBpnn_ReadReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_ACC_X_V_DATA);
    return Data;
}

void XBpnn_Set_ACC_Y_V(XBpnn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBpnn_WriteReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_ACC_Y_V_DATA, Data);
}

u32 XBpnn_Get_ACC_Y_V(XBpnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBpnn_ReadReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_ACC_Y_V_DATA);
    return Data;
}

void XBpnn_Set_ACC_Z_V(XBpnn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBpnn_WriteReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_ACC_Z_V_DATA, Data);
}

u32 XBpnn_Get_ACC_Z_V(XBpnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBpnn_ReadReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_ACC_Z_V_DATA);
    return Data;
}

void XBpnn_InterruptGlobalEnable(XBpnn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBpnn_WriteReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_GIE, 1);
}

void XBpnn_InterruptGlobalDisable(XBpnn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBpnn_WriteReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_GIE, 0);
}

void XBpnn_InterruptEnable(XBpnn *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XBpnn_ReadReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_IER);
    XBpnn_WriteReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_IER, Register | Mask);
}

void XBpnn_InterruptDisable(XBpnn *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XBpnn_ReadReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_IER);
    XBpnn_WriteReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_IER, Register & (~Mask));
}

void XBpnn_InterruptClear(XBpnn *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBpnn_WriteReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_ISR, Mask);
}

u32 XBpnn_InterruptGetEnabled(XBpnn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XBpnn_ReadReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_IER);
}

u32 XBpnn_InterruptGetStatus(XBpnn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XBpnn_ReadReg(InstancePtr->Ctrls_BaseAddress, XBPNN_CTRLS_ADDR_ISR);
}
