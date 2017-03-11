#include<STC89C5X.h>

unsigned int timer,level;

unsigned int state;

unsigned int update_times,local_now,local_next;

__sbit __at(0xB2) K3;
__sbit __at(0xB3) K4;
__sbit __at(0xA2) LSA;
__sbit __at(0xA3) LSB;
__sbit __at(0xA4) LSC;
__sbit __at(0xA0) OUT;
/*
#define K3 0xB2
#define K4 0xB3
#define LSA 0xA2
#define LSB 0xA3
#define LSC 0xA4
#define OUT P2_0
*/
const unsigned char DIG_CODE[10]={0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f};

/*0,1,2,3,4,5,6,7,8,9*/

const unsigned char sin_wave[21]={0,128,167,203,231,249,255,249,231,203,167,128,88,52,24,6,0,6,24,52,88};
/*sine wave sample*/

const unsigned long shift[8]={0,20,60,100,500,2000,20000,100000};

const unsigned int shift_base_time[8]={0,1,3,5,25,100,1000,5000};

/*10us,25us,50us,250us,1ms,10ms,50ms*/
/*200us,500us,1ms,5ms,20ms,200ms,1s*/
void timerInit(void)
{

    TMOD=0x01;
    TH0=0xff;
    TL0=0xf6;
    TR0=1;
    /*open timer*/
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

void main()
{

    timer=0;
    level=6;
    state=0;
    update_times=shift_base_time[level];
    /*set init values*/
    
    IT0=1;EX0=1;
    IT1=1;EX1=1;
    EA=1;
    /*open interrupt*/

    ET0=1;
    P0=DIG_CODE[level];
    
    timerInit();
    
    while(1)
        ;
}


void increase(void) __interrupt(2)
{
    TR0=0;
    delay(10);
    if(K4==0)
    {
        ++level;
        if(level>7)
            level=7;
        P0=DIG_CODE[level];
        update_times=shift_base_time[level];
        state=0;
        timer=0;
    }
    TR0=1;
}

void decrease(void) __interrupt(0)
{
    TR0=0;
    delay(10);
    if(K3==0)
    {
        --level;
        if(level<1)
            level=1;
        P0=DIG_CODE[level];
        update_times=shift_base_time[level];
        state=0;
        timer=0;
    }
    TR0=1;
}

void timer0(void) __interrupt(1)
{
    TR0=0;

    TH0=0xff;
    TL0=0xf6;

    local_now=update_times*state;
    local_next=local_now+update_times;
    ++timer;
    if(timer==shift[level])
        timer=0,state=0;
    if(timer==local_next)
        ++state;
    if(timer>local_now+update_times*sin_wave[state]/255)
        OUT=1;
    else
        OUT=0;
    TR0=1;
}

