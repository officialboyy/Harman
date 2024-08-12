/*
 * led.h
 *
 *  Created on: Aug 5, 2024
 *      Author: heso9
 */
/* USER CODE END Header */

#ifndef __LED_H
#define __LED_H

#include "stm32f4xx_hal.h"

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */
extern uint32_t ADCVal[1];
extern uint32_t LDR_Val;
extern volatile int lux;
extern char dum[40];
/* USER CODE END ET */


/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);
int Illuminance(uint32_t LDR_Val);

#endif /* __LED_H */
