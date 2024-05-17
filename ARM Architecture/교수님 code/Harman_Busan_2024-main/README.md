# Harman_Busan_2024
## Harman_Busan_2024
### Harman_Busan_2024
#### Harman_Busan_2024

https://github.com/hulklee1/Harman_Busan_2024/blob/main/%ED%9A%8C%EB%A1%9C%EA%B5%AC%EC%84%B1%EB%8F%84.jpg

```
/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include <stdio.h>

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
UART_HandleTypeDef huart2;

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_USART2_UART_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
int __io_putchar(int ch)
{
	HAL_UART_Transmit(&huart2, &ch, 1, 10);
	return ch;
}
char Buf[100]; // Receive buffer from UART
int __io_getchar()
{
	//while(HAL_UART_Receive(&huart2, Buf, 1, 10) != HAL_OK);  // 1 Byte receive
	while(1)
	{
		int r = HAL_UART_Receive(&huart2, Buf, 1, 10);  // 1 Byte receive
		if(r == HAL_OK) break;
	}
	HAL_UART_Transmit(&huart2, Buf, 1, 10);  // Echo
	if(*Buf == '\r') HAL_UART_Transmit(&huart2, "\n", 1, 10);  // CRLF
	return *Buf;
}

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_USART2_UART_Init();
  /* USER CODE BEGIN 2 */

  printf("\033[2J");	// screen clear
  printf("\033[1;1H");	// Move cursor pos to (1,1)
  printf("Program Started....Press Blue button to continue\r\n");
  while(HAL_GPIO_ReadPin(B1_GPIO_Port, B1_Pin));  // (B1 == 0) if pressed

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  int count = 0;
  int mode  = 1;  // 1 : continue, 0 : pause

  printf("Input start number : \r\n");
  setvbuf( stdin, NULL, _IONBF, 0 );
  scanf("%d", &count);

  while (1)
  {
	  if(HAL_GPIO_ReadPin(B1_GPIO_Port, B1_Pin) == 0)
	  {
		  mode = !mode;
		  if(mode == 0) // pause mode start
			  printf("Paused. Press Blue button to continue\r\n");
		  while(HAL_GPIO_ReadPin(B1_GPIO_Port, B1_Pin) == 0);  // Wait until B1 released
	  }
/*	  if(HAL_GPIO_ReadPin(B1_GPIO_Port, B1_Pin) == 0 && mode == 1)
	  {
		  mode = 0; // pause mode start
	  }
	  else if(HAL_GPIO_ReadPin(B1_GPIO_Port, B1_Pin) == 0 && mode == 0)
	  {
		  mode = 1; // pause mode end & resume
	  }*/

	  if(mode == 1)
		  printf("count loop %10.2f\r\n", count++*3.14f);
	  HAL_Delay(100);
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}
```
