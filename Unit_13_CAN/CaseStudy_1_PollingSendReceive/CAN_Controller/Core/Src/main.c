/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "../stm32f1xx_hal_can.h"


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
CAN_HandleTypeDef hcan;

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_CAN_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */


void CAN_voidSendPacket(uint32_t ID , uint8_t DLC, uint8_t *p_Data)
{
	uint8_t pTxMailbox ;
	HAL_StatusTypeDef HAL_Status ;
	CAN_TxHeaderTypeDef pHeader ;
	// TX Header
	pHeader.DLC = DLC ;
	pHeader.IDE = DISABLE ;
	pHeader.RTR = CAN_RTR_DATA ;
	pHeader.StdId = ID ;
	pTxMailbox = (uint8_t)HAL_CAN_GetTxMailboxesFreeLevel(&hcan);
	if(pTxMailbox > 0)
	{
		// Exist Free Mail-Box
		HAL_Status = HAL_CAN_AddTxMessage(&hcan, &pHeader,p_Data,(uint32_t*)&pTxMailbox);
		if (HAL_Status != HAL_OK)
		{
			Error_Handler();
		}

		// Poling On Data
		while ( HAL_CAN_IsTxMessagePending (&hcan, (uint32_t)pTxMailbox) ) ;
	}


}

void   CAN_voidID_Filter(uint16_t ID , uint16_t mask , uint8_t filterBankNum)
{
	// 9-bit id and mask
	ID = ID &(0b111111111000) ;
	mask = mask &(0b111111111000) ;

	CAN_FilterTypeDef sFilterConfig ;
	sFilterConfig.FilterActivation= CAN_FILTER_ENABLE;
	sFilterConfig.FilterBank= filterBankNum ;
	sFilterConfig.FilterFIFOAssignment = CAN_FILTER_FIFO0 ;
	sFilterConfig.FilterIdHigh = (ID << 5) ;
	sFilterConfig.FilterIdLow = 0x0000 ;
	sFilterConfig.FilterMaskIdHigh = (mask << 5) ;
	sFilterConfig.FilterMaskIdLow = 0x0000 ;
	sFilterConfig.FilterMode = CAN_FILTERMODE_IDMASK ;
	sFilterConfig.FilterScale= CAN_FILTERSCALE_32BIT ;
	HAL_CAN_ConfigFilter(&hcan, &sFilterConfig);
}

void CAN_voidReceivePacket(uint32_t *ID , uint8_t *DLC, uint8_t *p_Data)
{
	CAN_RxHeaderTypeDef pHeader ;
	// Wait Until RX Packet be more than 1
	while (HAL_CAN_GetRxFifoFillLevel(&hcan, CAN_FILTER_FIFO0) == 0) ;
	// Get Packet
	HAL_CAN_GetRxMessage(&hcan, CAN_FILTER_FIFO0, &pHeader, p_Data);
	*DLC = pHeader.DLC ;
	*ID = pHeader.StdId ;
}


#define BUFFER_SIZE	4
uint8_t payload[BUFFER_SIZE] = {'C','A','N',' '};
uint8_t frameCounter ;

uint32_t RXID; uint8_t RXBUFFER[8];
uint8_t RXDLC ;
// 9-bit ID 0b0011 1111 1xxx
#define WORKING_ID	0x3ff
#define RX_MASK	    0b111100000000

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
  MX_CAN_Init();
  /* USER CODE BEGIN 2 */
  // Filtration
  CAN_voidID_Filter(WORKING_ID , RX_MASK, 0);

  HAL_CAN_Start(&hcan); //start CAN

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
	  payload[BUFFER_SIZE-1] = frameCounter++ ;
	  CAN_voidSendPacket(0x1FF,BUFFER_SIZE, payload) ;
	  CAN_voidReceivePacket(&RXID, &RXDLC, RXBUFFER);
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_HSI;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief CAN Initialization Function
  * @param None
  * @retval None
  */
static void MX_CAN_Init(void)
{

  /* USER CODE BEGIN CAN_Init 0 */

  /* USER CODE END CAN_Init 0 */

  /* USER CODE BEGIN CAN_Init 1 */

  /* USER CODE END CAN_Init 1 */
  hcan.Instance = CAN1;
  hcan.Init.Prescaler = 1;
  hcan.Init.Mode = CAN_MODE_LOOPBACK;
  hcan.Init.SyncJumpWidth = CAN_SJW_1TQ;
  hcan.Init.TimeSeg1 = CAN_BS1_6TQ;
  hcan.Init.TimeSeg2 = CAN_BS2_1TQ;
  hcan.Init.TimeTriggeredMode = DISABLE;
  hcan.Init.AutoBusOff = DISABLE;
  hcan.Init.AutoWakeUp = DISABLE;
  hcan.Init.AutoRetransmission = ENABLE;
  hcan.Init.ReceiveFifoLocked = DISABLE;
  hcan.Init.TransmitFifoPriority = DISABLE;
  if (HAL_CAN_Init(&hcan) != HAL_OK)
  {
    Error_Handler();
  }


  /* USER CODE BEGIN CAN_Init 2 */

  /* USER CODE END CAN_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOA_CLK_ENABLE();

}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
