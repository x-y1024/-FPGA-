/*
 * num_extraction.c
 *
 *  Created on: 2018Äê6ÔÂ7ÈÕ
 *      Author: majin
 */

#include "num_extraction.h"

void Num_Extraction(char *RecvChar, int len, long* Thu, long* Ind, long* Mid, long* Rin, long* Lit, long* ACC_X, long* ACC_Y, long* ACC_Z ){

	char c_Thu[8] = "", c_Ind[8] = "", c_Mid[8] = "", c_Rin[8] = "", c_Lit[8] = "", c_ACC_X[8] = "", c_ACC_Y[8] = "", c_ACC_Z[8] = "";
	int b1 = 0, b2 = 0, b3 = 0, b4 = 0, b5 = 0, b6 = 0, b7 = 0, b8 = 0, b9 = 0;
	int b1_s = 0, b2_s = 0, b3_s = 0, b4_s = 0, b5_s = 0, b6_s = 0, b7_s = 0, b8_s = 0, b9_s = 0;

	for( int i = 0; i<len ;i++ ){
		if(RecvChar[i] == ',' ) { b1 = i; b1_s =1; }
		if(RecvChar[i]== ' ' && b1_s == 1) { b2 = i; b2_s = 1; b1_s = 0; continue; }
		if(RecvChar[i]== ' ' && b2_s == 1) { b3 = i; b3_s = 1; b2_s = 0; continue; }
		if(RecvChar[i]== ' ' && b3_s == 1) { b4 = i; b4_s = 1; b3_s = 0; continue; }
		if(RecvChar[i]== ' ' && b4_s == 1) { b5 = i; b5_s = 1; b4_s = 0; continue; }
		if(RecvChar[i]== ' ' && b5_s == 1) { b6 = i; b6_s = 1; b5_s = 0; continue; }
		if(RecvChar[i]== ' ' && b6_s == 1) { b7 = i; b7_s = 1; b6_s = 0; continue; }
		if(RecvChar[i]== ' ' && b7_s == 1) { b8 = i; b8_s = 1; b7_s = 0; continue; }
		if(RecvChar[i]== ' ' && b8_s == 1) { b9 = i; b9_s = 1; b8_s = 0; continue; }
		if(b9_s == 1) break;
	}

	//printf("%d, %d, %d, %d, %d, %d, %d, %d, %d\n", b1, b2, b3, b4, b5, b6, b7, b8, b9 ) ;

	for(int i = b1+1; i < b2; i++)		c_Thu[i- b1-1] = RecvChar[i];
	for(int i = b2+1; i < b3; i++)		c_Ind[i- b2-1] = RecvChar[i];
	for(int i = b3+1; i < b4; i++)		c_Mid[i- b3-1] = RecvChar[i];
	for(int i = b4+1; i < b5; i++)		c_Rin[i- b4-1] = RecvChar[i];
	for(int i = b5+1; i < b6; i++)		c_Lit[i- b5-1] = RecvChar[i];
	for(int i = b6+1; i < b7; i++)		c_ACC_X[i- b6-1] = RecvChar[i];
	for(int i = b7+1; i < b8; i++)		c_ACC_Y[i- b7-1] = RecvChar[i];
	for(int i = b8+1; i < b9; i++)		c_ACC_Z[i- b8-1] = RecvChar[i];

	b1 = 0, b2 = 0, b3 = 0, b4 = 0, b5 = 0, b6 = 0, b7 = 0, b8 = 0, b9 = 0;
	b1_s = 0, b2_s = 0, b3_s = 0, b4_s = 0, b5_s = 0, b6_s = 0, b7_s = 0, b8_s = 0, b9_s = 0;

	sscanf(c_Thu,"%ld", Thu);
	sscanf(c_Ind,"%ld", Ind);
	sscanf(c_Mid,"%ld", Mid);
	sscanf(c_Rin,"%ld", Rin);
	sscanf(c_Lit,"%ld", Lit);
	sscanf(c_ACC_X,"%ld", ACC_X);
	sscanf(c_ACC_Y,"%ld", ACC_Y);
	sscanf(c_ACC_Z,"%ld", ACC_Z);
	//printf("%ld %ld %ld %ld %ld %ld %ld %ld \n", *Thu, *Ind, *Mid, *Rin, *Lit, *ACC_X, *ACC_Y, *ACC_Z);

}
