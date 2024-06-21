#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "sleep.h"

#define rPWM_FREQ1  0x20
#define rPWM_FREQ2  0x24
#define rPWM_FREQ3  0x28
#define rPWM_FREQ4  0x2c

#define rPWM_DUTY1  0x30
#define rPWM_DUTY2  0x34
#define rPWM_DUTY3  0x38
#define rPWM_DUTY4  0x3c

int main()
{
    int i;
	uint32_t rdata;
	int err_cnt=0;
    int duty;

    init_platform();

    print("Hello World\r\n");
    print("Successfully ran Hello World application");

    xil_printf("\r\n1)  customize bram test .. \r\n");
    xil_printf("write bram-1 ..\r\n");
    for ( i = 0; i < 2048; i++)
    {
        Xil_Out32(XPAR_BRAM_0_BASEADDR+(4*i), 0xaabbcc00+i);
    }

    xil_printf("read bram-1 ..\r\n");
    for ( i = 0; i < 2048; i++)
    {
        rdata = Xil_In32(XPAR_BRAM_0_BASEADDR+(4*i));
        if ( rdata != (0xaabbcc00+i))   err_cnt++;
        // xil_printf("i : %03d, w : %x \r\n", i, (0xaabbcc00+i), rdata);
    }
    xil_printf("error_cnt : %d \r\n", err_cnt);
    xil_printf("\r\n2) user register test.. \r\n");
    xil_printf("write user register ..\r\n");
    Xil_Out32(XPAR_BRAM_1_BASEADDR+rPWM_FREQ1, 0x1000);
    Xil_Out32(XPAR_BRAM_1_BASEADDR+rPWM_FREQ2, 0x2000);
    Xil_Out32(XPAR_BRAM_1_BASEADDR+rPWM_FREQ3, 0x3000);
    Xil_Out32(XPAR_BRAM_1_BASEADDR+rPWM_FREQ4, 0x4000);

    Xil_Out32(XPAR_BRAM_1_BASEADDR+rPWM_DUTY1, 10);
    Xil_Out32(XPAR_BRAM_1_BASEADDR+rPWM_DUTY2, 30);
    Xil_Out32(XPAR_BRAM_1_BASEADDR+rPWM_DUTY3, 50);
    Xil_Out32(XPAR_BRAM_1_BASEADDR+rPWM_DUTY4, 70);

    xil_printf("read user register ..\r\n");
    xil_printf("freq1 : %x \r\n", Xil_In32(XPAR_BRAM_1_BASEADDR+rPWM_FREQ1));
    xil_printf("freq2 : %x \r\n", Xil_In32(XPAR_BRAM_1_BASEADDR+rPWM_FREQ2));
    xil_printf("freq3 : %x \r\n", Xil_In32(XPAR_BRAM_1_BASEADDR+rPWM_FREQ3));
    xil_printf("freq4 : %x \r\n", Xil_In32(XPAR_BRAM_1_BASEADDR+rPWM_FREQ4));

    xil_printf("duty1 : %d \r\n", Xil_In32(XPAR_BRAM_1_BASEADDR+rPWM_DUTY1));
    xil_printf("duty2 : %d \r\n", Xil_In32(XPAR_BRAM_1_BASEADDR+rPWM_DUTY2));
    xil_printf("duty3 : %d \r\n", Xil_In32(XPAR_BRAM_1_BASEADDR+rPWM_DUTY3));
    xil_printf("duty4 : %d \r\n", Xil_In32(XPAR_BRAM_1_BASEADDR+rPWM_DUTY4));

    duty = 0;
    while (1)
    {
        xil_printf("duty : %d \r\n", duty);
        Xil_Out32(XPAR_BRAM_1_BASEADDR+rPWM_DUTY1, duty);
        Xil_Out32(XPAR_BRAM_1_BASEADDR+rPWM_DUTY2, duty);
        Xil_Out32(XPAR_BRAM_1_BASEADDR+rPWM_DUTY3, duty);
        Xil_Out32(XPAR_BRAM_1_BASEADDR+rPWM_DUTY4, duty);

        duty++;
        if(duty > 100)  duty = 0;
        sleep(1);
    }

    cleanup_platform();
    return 0;
}
