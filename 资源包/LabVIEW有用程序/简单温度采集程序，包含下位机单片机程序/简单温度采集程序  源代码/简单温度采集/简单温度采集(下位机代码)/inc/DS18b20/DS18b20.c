#include <DS18b20.h>
#include <STC12C5A60S2.h>


//�¶ȴ������˿ڶ���
sbit DQ = P2^0;

static void Delay(int num){//��ʱ����
	while(num--) ;
}

/**************************************
*
*��λ�¶�оƬ
***************************************/
void dsreset(void){
	DQ = 0;    //��Ƭ����DQ����
	Delay(60); //��ȷ��ʱ ���� 480us
	DQ = 1;    //��������
	Delay(50);
}

/**************************************
*
*��ȡһ���ֽ�����
***************************************/
unsigned char tmpReadByte(void){//��һ���ֽ�
	unsigned char i=0;
	unsigned char dat = 0;
	for (i=8;i>0;i--){
		DQ = 0; // �������ź�
		Delay(1);
		dat>>=1;
		DQ = 1; // �������ź�
		if(DQ==1){
			dat|=0x80;
		}
		Delay(7);
	}
	return(dat);
}


/**************************************
*
*д��һ���ֽ�����
***************************************/
void tmpWriteByte(unsigned char dat){//дһ���ֽ�
	unsigned char i=0;
	for (i=8; i>0; i--){
		DQ = 0;
		DQ = dat&0x01;
		Delay(7);
		DQ = 1;
		dat>>=1;
	}
}





/**************************************
*��ȡ�¶�,�ѵõ������ݱ�����a��b��
* b:��8λ  a:��8λ
***************************************/
void getTemperature(unsigned char *a,unsigned char *b){//��ȡ�¶�

	int i=500;
	dsreset();			//��λ
	tmpWriteByte(0xCC); // ����������кŵĲ���
	tmpWriteByte(0x44); // �����¶�ת��  ���ڴ��������������ʱ϶, ��ôֻҪ�������ڽ����¶�ת���ͻ����0, ת����ɺ����1.

	while(!DQ && i)i--;//DQ==0˵������ת���¶�
	
	dsreset();
	tmpWriteByte(0xCC); //����������кŵĲ���
	tmpWriteByte(0xBE); //��ȡ�¶ȼĴ���
	*b=tmpReadByte();  //����8λ
	*a=tmpReadByte(); //����8λ
	
}








