/****************************************
*使用的是 STC12C5A32S2 单片机   data 256   xdata 1024    EERROM 28k 56扇区   flash 32k
*
*时间：2014-11-20
*
*
*
*****************************************/


#include <STC12C5A60S2.h>

#include "serial.h"
#include "DS18b20.h"



bit f=0;					//表示上位机要求发送温度数据的标志位

sbit led=P2^1;

void DELAY_MS (unsigned int a);


void main(void){
	int i;
	unsigned char H,L;
	
	serial_init();
	
	for(i=0;i<6;i++){
		led=~led;
		DELAY_MS(100);
	}
	led=0;
	
	while(1){
		
		if(f){//f==1  表示上位机要求发送温度数据
			ES=0;//关闭串口中断
			getTemperature(&H,&L);
			serial_t(H);//发送温度高8位
			serial_t(L);//发送温度低8位
			f=0;
			ES=1;//开串口中断
		}
		
	}
	
}



/************************************
*串口中断处理函数
*
************************************/
void serial(void) interrupt 4 {
	static unsigned char flag=0;		//接收状态标志
	if(RI==1){//接收中断标志位为1时
		RI=0;//清除中断标志
		if(SBUF==0xAA){//上位机要求发送温度数据
			f=1;
		}
		
	}
	
	
}



/*******************************************
*毫秒级CPU延时函数
*
*应用于1T单片机时i<600，应用于12T单片机时i<125
*******************************************/
void DELAY_MS (unsigned int a){
	unsigned int i;
	while( a-- != 0){
		for(i = 0; i < 125; i++);
	}
}

























