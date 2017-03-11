#include<STC89C5X.h>

__sfr __at(0x90) OUT1;
__sfr __at(0xA0) OUT2;

/*
#define K3 0xB2
#define K4 0xB3
#define LSA 0xA2
#define LSB 0xA3
#define LSC 0xA4
#define OUT P2_0
*/

unsigned char period[16]={1,2,3,4,5,6,7,1,2,3,4,5,6,7,1,2};

unsigned long timer[16];

unsigned char read_flag;

const unsigned long times[8]={0,20,50,100,500,2000,20000,100000};

unsigned char ii,i;

void sendData(unsigned char data)
{
    SBUF=data;
    while(TI==0);
    TI=0;
}

void sendString(unsigned char * data)
{
    while(*data)
    {
        sendData(*data++);
    }
}

void delay(unsigned int n)
{
    unsigned char a;
    for(;n>0;n--)
    {
        for(a=110;a>0;a--)
            ;
    }
}

void main(void)
{
    IT0=1;EX0=1;
    IT1=1;EX1=1;
    ET0=1;ET1=1;
    EA=1;

    TMOD=0x01;
    SCON=0x50;
    TMOD|=0x20;
    PCON|=0x80;
    TH1=0xF3;
    TL1=0xF3;
    ES=1;
    i=0;
    read_flag=0;
    
    TH0=0xFF;
    TL0=0xF6;
    TR0=1;
    TR1=1;
    
    delay(100);

    sendString("HelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHello\r\n");
    sendString("Input 16 consecutive integers to set PWM\r\n");

    while(1)
    {
        if(read_flag)
        {
            read_flag=0;
            TR0=0;
            for(i=0;i<16;++i)
            {
                timer[i]=0;
                period[i]-='0';
            }
            
            sendString("PWM updated!\r\n");
            
            TR0=1;
        }
    }
}

void timer0(void) __interrupt(1)
{
    TH0=0xFF;
    TL0=0xF6;
    OUT1=0;
    OUT2=0;
    for(i=0;i<8;++i)
    {
        ++timer[i];
        if(timer[i]==times[period[i]])
            timer[i]=0;
        if(timer[i]>(times[period[i]]>>1))
            OUT1|=(1<<i);
    }

    for(i=8;i<16;++i)
    {
        ++timer[i];
        if(timer[i]==times[period[i]])
            timer[i]=0;
        if(timer[i]>(times[period[i]]>>1))
            OUT2|=(1<<(i-8));
    }
}




void usart4(void) __interrupt(4)
{
    ES=0;
    if(RI)
    {
        RI=0;
        period[ii]=SBUF;
        ++ii;
        if(ii==16)
        {
            ii=0;
            read_flag=1;
        }
    }
    ES=1;
}
