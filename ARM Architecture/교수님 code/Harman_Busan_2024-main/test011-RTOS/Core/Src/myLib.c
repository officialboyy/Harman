/*
 * myLib.c
 *
 *  Created on: Apr 17, 2024
 *      Author: HulkL
 */
#include "main.h"

//extern ADC_HandleTypeDef hadc1;
//extern TIM_HandleTypeDef htim3;
extern UART_HandleTypeDef huart2;

int __io_putchar(int ch)
{
	HAL_UART_Transmit(&huart2, &ch, 1, 10);
	return ch;
}

void Outs(char *s)
{
	//while(1)
	//{
	//	if(*s != 0) { __io_putchar(*s); s++; }
	//	else break;
	//}
	while(*s) (*s != '\r') ? __io_putchar(*s++) :
			                (__io_putchar(*s++),__io_putchar('\n'));
}

int GetAdcValue()
{
	//HAL_ADC_Start(&hadc1);
	//HAL_ADC_PollForConversion(&hadc1, 10);
	//return HAL_ADC_GetValue(&hadc1);
}

void ProgramStart()
{
	printf("\033[2J");	// screen clear
	printf("\033[1;1H");	// Move cursor pos to (1,1)
	printf("Program Started");
	Wait(1);
	printf("\033[2J");	// screen clear
}

void Wait(int o)
{
	if(o) printf("Press Blue button to continue\r\n");
	while(HAL_GPIO_ReadPin(B1_GPIO_Port, B1_Pin));  // (B1 == 0) if pressed
}


