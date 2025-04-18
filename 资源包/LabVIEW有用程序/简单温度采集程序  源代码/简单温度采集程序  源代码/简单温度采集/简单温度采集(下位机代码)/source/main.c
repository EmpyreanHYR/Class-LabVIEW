/****************************************
*ʹ�õ��� STC12C5A32S2 ��Ƭ��   data 256   xdata 1024    EERROM 28k 56����   flash 32k
*
*ʱ�䣺2014-11-20
*
*
*
*****************************************/


#include <STC12C5A60S2.h>

#include "serial.h"
#include "DS18b20.h"



bit f=0;					//��ʾ��λ��Ҫ�����¶����ݵı�־λ

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
		
		if(f){//f==1  ��ʾ��λ��Ҫ�����¶�����
			ES=0;//�رմ����ж�
			getTemperature(&H,&L);
			serial_t(H);//�����¶ȸ�8λ
			serial_t(L);//�����¶ȵ�8λ
			f=0;
			ES=1;//�������ж�
		}
		
	}
	
}



/************************************
*�����жϴ�����
*
************************************/
void serial(void) interrupt 4 {
	static unsigned char flag=0;		//����״̬��־
	if(RI==1){//�����жϱ�־λΪ1ʱ
		RI=0;//����жϱ�־
		if(SBUF==0xAA){//��λ��Ҫ�����¶�����
			f=1;
		}
		
	}
	
	
}



/*******************************************
*���뼶CPU��ʱ����
*
*Ӧ����1T��Ƭ��ʱi<600��Ӧ����12T��Ƭ��ʱi<125
*******************************************/
void DELAY_MS (unsigned int a){
	unsigned int i;
	while( a-- != 0){
		for(i = 0; i < 125; i++);
	}
}

























