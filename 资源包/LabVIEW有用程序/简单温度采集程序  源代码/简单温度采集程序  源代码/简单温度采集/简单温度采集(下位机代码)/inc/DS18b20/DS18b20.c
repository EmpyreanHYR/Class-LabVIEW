#include <DS18b20.h>
#include <STC12C5A60S2.h>


//温度传感器端口定义
sbit DQ = P2^0;

static void Delay(int num){//延时函数
	while(num--) ;
}

/**************************************
*
*复位温度芯片
***************************************/
void dsreset(void){
	DQ = 0;    //单片机将DQ拉低
	Delay(60); //精确延时 大于 480us
	DQ = 1;    //拉高总线
	Delay(50);
}

/**************************************
*
*读取一个字节数据
***************************************/
unsigned char tmpReadByte(void){//读一个字节
	unsigned char i=0;
	unsigned char dat = 0;
	for (i=8;i>0;i--){
		DQ = 0; // 给脉冲信号
		Delay(1);
		dat>>=1;
		DQ = 1; // 给脉冲信号
		if(DQ==1){
			dat|=0x80;
		}
		Delay(7);
	}
	return(dat);
}


/**************************************
*
*写入一个字节数据
***************************************/
void tmpWriteByte(unsigned char dat){//写一个字节
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
*读取温度,把得到的数据保存在a，b中
* b:低8位  a:高8位
***************************************/
void getTemperature(unsigned char *a,unsigned char *b){//读取温度

	int i=500;
	dsreset();			//复位
	tmpWriteByte(0xCC); // 跳过读序号列号的操作
	tmpWriteByte(0x44); // 启动温度转换  若在此命令后主机产生时隙, 那么只要器件还在进行温度转换就会输出0, 转换完成后输出1.

	while(!DQ && i)i--;//DQ==0说明真正转换温度
	
	dsreset();
	tmpWriteByte(0xCC); //跳过读序号列号的操作
	tmpWriteByte(0xBE); //读取温度寄存器
	*b=tmpReadByte();  //读低8位
	*a=tmpReadByte(); //读高8位
	
}








