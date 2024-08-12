#include "main.h"

extern ADC_HandleTypeDef hadc1;
extern UART_HandleTypeDef huart2;
extern TIM_HandleTypeDef htim3;

int __io_putchar(int ch)
{
   HAL_UART_Transmit(&huart2, &ch, 1, 10);
   return ch;
}

void Outs(char *s)
{

   while(*s) (*s != '\r') ? __io_putchar(*s++) : (__io_putchar(*s++), __io_putchar('\n'));         //enable Enter key
}

void ProgramStart(){
   printf("\033[2J");   // screen clear
   printf("\033[1;1H");   // Move cursor pos to (1,1)
   printf("Program Started ");
   Wait(1);
   printf("\033[2J");   // screen clear
}

void Wait(int o)
{
	   printf("Press Blue button to continue\r\n");
	   while(HAL_GPIO_ReadPin(B1_GPIO_Port, B1_Pin));  // (B1 == 0) if pressed

}
/*
uint8_t DHT11_read(uint8_t *data) {
    // 초기화
    HAL_GPIO_WritePin(DHT11_GPIO_Port, DHT11_Pin, GPIO_PIN_RESET); // 데이터 핀을 LOW로 설정
    HAL_Delay(18);
    HAL_GPIO_WritePin(DHT11_GPIO_Port, DHT11_Pin, GPIO_PIN_SET); // 데이터 핀을 HIGH로 설정
    HAL_Delay(20);
    HAL_GPIO_ReadPin(DHT11_GPIO_Port, DHT11_Pin); // 데이터 핀을 입력 모드로 설정

    // 응답 대기
    uint8_t response = 0;
    for (uint8_t i = 0; i < 80; i++) {
        if ((i >= 3 && i <= 20) && HAL_GPIO_ReadPin(DHT11_GPIO_Port, DHT11_Pin) == GPIO_PIN_SET) {
            response = 1;
        }
        HAL_Delay(1);
    }

    if (response == 0) {
        return 0; // 응답 없음
    }

    // 데이터 읽기
    for (uint8_t i = 0; i < 40; i++) {
        uint8_t bit = 0;
        HAL_Delay(24);
        if (HAL_GPIO_ReadPin(DHT11_GPIO_Port, DHT11_Pin) == GPIO_PIN_SET) {
            bit = 1;
        }
        HAL_Delay(40);
        if (i & 0x01) {
            data[i >> 1] |= bit;
        } else {
            data[i >> 1] <<= 1;
            data[i >> 1] |= bit;
        }
    }

    // 체크섬 검사
    if ((data[0] + data[1] + data[2]) != data[3]) {
        return 0; // 데이터 오류
    }

    return 1; // 데이터 읽기 성공
}
*/
int GetAdcValue()
{
   HAL_ADC_Start(&hadc1);
   HAL_ADC_PollForConversion(&hadc1, 10);
   return HAL_ADC_GetValue(&hadc1);

}

double map(double x, double in_min, double in_max, double out_min, double out_max) {
  return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}



/*
uint8_t data[5];
if (DHT11_read(data)) {
    float humidity = data[0] + data[1] * 0.1;
    printf("humidity : %f", humidity);
    float temperature = ((data[2] & 0x7F) << 8) + data[3];
    if (data[2] & 0x80) {
        temperature = -temperature;
    }
    printf("temperature : %f", temperature);
    // 습도와 온도 출력 (예: UART, LCD 등)
}
*/
