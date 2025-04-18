#ifndef __DS18b20_H__
#define __DS18b20_H__

void dsreset(void);
unsigned char tmpReadByte(void);
void tmpWriteByte(unsigned char dat);

void getTemperature(unsigned char *a,unsigned char *b);


#endif