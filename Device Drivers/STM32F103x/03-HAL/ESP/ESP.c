/**
* @file ESP.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-11-16
*
*/


/******************************************************************************
* Includes
*******************************************************************************/

#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "COMMON.h"
#include "stdio.h"
#include "RCC_interface.h"
#include "GPIO_interface.h"
#include "USART_interface.h"
#include "STK_interface.h"
#include "NVIC_interface.h"


#include "ESP.h"
/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/

#define DEBUG_ESP	0




/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/

#define _ESP_BUFFER_SIZE_      			 	50
#define _ESP_MIN_RETURN				 		6
#define _ESP_SIZE_OF_OK_wholeReq			 		6
#define _ESP_SIZE_OF_ERROR_wholeReq		 		9
#define _ESP_SIZE_OF_CONNECTED		 		52
#define _ESP_SIZE_OF_NOT_CONNECTED	 		35
#define _ESP_SIZE_SER_NO_NETWORK_CONNECTED	16
#define _ESP_SIZE_OF_SERV_CONNECTED			15
#define _ESP_SERV_ALREADY_CONNECTED			28

/******************************************************************************
* Typedefs
*******************************************************************************/

typedef enum
{
	AT_COMMAND_CHK	,	// For Commands That Return OK or ERROR
	ESP_WAIT_CMD	,	//	Wait Until Full CMD Passed
	ESP_CONNECT_NETWORK,
	ESP_CONNECT_SERVER ,
	ESP_SKIP_VALIDATION
}typoChk_t;

typedef enum
{
	ESP_OK_CMD	,
	ESP_ERROR_CMD,
	ESP_NETWORK_CONNECTED ,
	ESP_NETWORK_NOT_CONNECTED ,
	ESP_SERVER_CONNECTED	,
	ESP_CMD_UNVALID	,
	ESP_CMD_VALID,
	ESP_UNDEFINED_CMD
}ValidateCommand_t;

/******************************************************************************
* Module Variable Definitions
*******************************************************************************/
static u8 Global_ESP_Buffer[_ESP_BUFFER_SIZE_]; 
static u16 Global_BufferCounter = 0 ;
static u8 *Global_ServerIP = NULL ;
static u8 *Global_ServerPortNumber = NULL ;
static u8 Global_u8IsRequest = 0 ;
static u8 * Global_ptr2UserRequestArray =  NULL ;

static u8 Global_ESP_Error_wholeReqay[_ESP_SIZE_OF_ERROR_wholeReq] 					 = {0x0D,0x0A,0x45,0x52,0x52,0x4F,0x52,0x0D,0x0A};	// \n\rError\n\r
static u8 Global_ESP_OK_wholeReqay	[_ESP_SIZE_OF_OK_wholeReq   ] 				     = {0x0D,0x0A,0x4F,0x4B,0x0D,0x0A};					// \n\rOK\n\r
static u8 Global_ESP_NETWORK_CONNECTED_wholeReqay [_ESP_SIZE_OF_CONNECTED] 				 = {0x57,0x49,0x46,0x49,0x20,0x44,0x49,
																				0x53,0x43,0x4F,0x4E,0x4E,0x45,0x43,
																				0x54,0x0D,0x0A,0x57,0x49,0x46,0x49,
																				0x20,0x43,0x4F,0x4E,0x4E,0x45,0x43,
																				0x54,0x45,0x44,0x0D,0x0A,0x57,0x49,
																				0x46,0x49,0x20,0x47,0x4F,0x54,0x20,
																				0x49,0x50 ,0x0D,0x0A,0x0D,0x0A,0x4F,
																				0x4B,0x0D,0x0A };
static u8 Global_ESP_NotConnected_wholeReqay[_ESP_SIZE_OF_NOT_CONNECTED			]= {0x57, 0x49,0x46,0x49,0x20,0x44,0x49,0x53,
																				0x43,0x4F,0x4E,0x4E,0x45,0x43,0x54,0x0D,
																				0x0A,0x2B,0x43,0x57,0x4A,0x41,0x50,0x3A,
																				0x31,0x0D,0x0A,0x0D,0x0A,0x46,0x41,0x49,0x4C
																				,0x0D,0x0A };
static u8 Global_ESP_Server_Network_Error[_ESP_SIZE_SER_NO_NETWORK_CONNECTED] = {0x6E,0x6F,0x20,0x69,0x70,0x0D,0x0A,0x0D,0x0A,
																				 0x45,0x52,0x52,0x4F,0x52,0x0D,0x0A};

static u8 Global_ESP_Serv_AlreadyConnected[_ESP_SERV_ALREADY_CONNECTED]			={0x41,0x4C,0x52,0x45,0x41,0x44,0x59,0x20,0x43,0x4F,
																				0x4E,0x4E,0x45,0x43,0x54,0x45,0x44,0x0D,0x0A,0x0D,0x0A,
																				0x45,0x52,0x52,0x4F,0x52,0x0D,0x0A};
static u8 Global_ESP_Serv_Connected[_ESP_SIZE_OF_SERV_CONNECTED]				= {0x43,0x4F,0x4E,0x4E,0x45,0x43,0x54,0x0D,0x0A,0x0D,
																					0x0A,0x4F,0x4B,0x0D,0x0A };


/**
 * @brief This Mmber Has Attribute 
 *          1-  USART_TRANCIVER
 *          2-  BR = 115200
 *          3-  8-Bit Mode
 *          7-  Disable Parity / HW Flow 
 *          8-  IDLE High with sampling at Leading Edge
 *          9-  Disable IRQs
 *          10- DMA Rx Enable 
 */
static USART_Config _ESP_PRIV_USART_MEMBER_ ;



/******************************************************************************
* Function Prototypes
*******************************************************************************/


/******************************************************************************
* Static Function Definitions
*******************************************************************************/
static u8 ESP_u8Comp2wholeReqays(u8 *ptr_wholeReq1 , u8 *ptr_wholeReq2 ,u8 wholeReqSize , u8 from)
{
	u8 LOC_u8Result = 1 ;
	u8 LOC_u8Counter ;
	for(LOC_u8Counter = from ; LOC_u8Counter< wholeReqSize ; LOC_u8Counter++)
	{
		if(ptr_wholeReq1[LOC_u8Counter] != ptr_wholeReq2[LOC_u8Counter])
			LOC_u8Result = 0 ;
	}

	return LOC_u8Result;
}
/*
static void ESP_voidTimeOut(void)
{
	USART_voidSendStringWithFixedSizeSynch(USART_1 , Global_ESP_Buffer , 10 );
	
}
*/
static ValidateCommand_t ESP_voidValidRecieved(typoChk_t typoChk)
{
	u8 LOC_u8Dummy ;
	typoChk_t LOC_Result = ESP_CMD_UNVALID ;
	if(Global_BufferCounter >= _ESP_MIN_RETURN)
	{
		if(AT_COMMAND_CHK == typoChk)
		{
			if((Global_BufferCounter) == _ESP_SIZE_OF_OK_wholeReq)
			{
				// AT COMMAND
				LOC_u8Dummy = ESP_u8Comp2wholeReqays(Global_ESP_Buffer , Global_ESP_OK_wholeReqay , _ESP_SIZE_OF_OK_wholeReq , 0) ;
				if(LOC_u8Dummy)
					LOC_Result = ESP_OK_CMD	;
				else
					LOC_Result = ESP_UNDEFINED_CMD ;
			}
			else if ((Global_BufferCounter) == 9)
			{
				// ERROR CMD
				LOC_u8Dummy = ESP_u8Comp2wholeReqays(Global_ESP_Buffer , Global_ESP_Error_wholeReqay , _ESP_SIZE_OF_OK_wholeReq, 0) ;
				if(LOC_u8Dummy)
					LOC_Result = ESP_ERROR_CMD	;
				else
					LOC_Result = ESP_UNDEFINED_CMD ;
			}
			else
			{
				LOC_Result = ESP_UNDEFINED_CMD ;
			}
			Global_BufferCounter = 0 ;
		}
		else if (AT_COMMAND_CHK == ESP_CONNECT_NETWORK)
		{
			 // (Global_BufferCounter) == _ESP_SIZE_OF_CONNECTED    || Global_BufferCounter) == _ESP_SIZE_OF_CONNECTED-17
			if((Global_BufferCounter) == _ESP_SIZE_OF_CONNECTED)
			{
				// Connected
				LOC_u8Dummy = ESP_u8Comp2wholeReqays(Global_ESP_Buffer , Global_ESP_NETWORK_CONNECTED_wholeReqay , _ESP_SIZE_OF_CONNECTED,0) ;
				if(LOC_u8Dummy)
					LOC_Result = ESP_NETWORK_CONNECTED	;
				else
					LOC_Result = ESP_UNDEFINED_CMD ;

			}
			else if ((Global_BufferCounter) == (_ESP_SIZE_OF_CONNECTED-17))
			{
				// Connected
				LOC_u8Dummy = ESP_u8Comp2wholeReqays(Global_ESP_Buffer , Global_ESP_NETWORK_CONNECTED_wholeReqay , _ESP_SIZE_OF_CONNECTED ,16) ;
				if(LOC_u8Dummy)
					LOC_Result = ESP_NETWORK_CONNECTED	;
				else
					LOC_Result = ESP_UNDEFINED_CMD ;
			}
			else if ((Global_BufferCounter) == _ESP_SIZE_OF_NOT_CONNECTED)
			{
				// Not Connected
				LOC_u8Dummy = ESP_u8Comp2wholeReqays(Global_ESP_Buffer , Global_ESP_NotConnected_wholeReqay , _ESP_SIZE_OF_NOT_CONNECTED ,0) ;
				if(LOC_u8Dummy)
					LOC_Result = ESP_NETWORK_NOT_CONNECTED	;
				else
					LOC_Result = ESP_UNDEFINED_CMD ;
			}
			else if((Global_BufferCounter) == (_ESP_SIZE_OF_NOT_CONNECTED-17))
			{
				// Not Connected
				LOC_u8Dummy = ESP_u8Comp2wholeReqays(Global_ESP_Buffer , Global_ESP_NotConnected_wholeReqay , _ESP_SIZE_OF_NOT_CONNECTED ,16) ;
				if(LOC_u8Dummy)
					LOC_Result = ESP_NETWORK_NOT_CONNECTED	;
				else
					LOC_Result = ESP_UNDEFINED_CMD ;
			}
			else
			{
				LOC_Result = ESP_UNDEFINED_CMD ;
			}
			Global_BufferCounter = 0 ;

		}
		else if(ESP_CONNECT_SERVER)
		{
			if((Global_BufferCounter) == (_ESP_SIZE_SER_NO_NETWORK_CONNECTED))

			{
				// No Network Connected
				LOC_u8Dummy = ESP_u8Comp2wholeReqays(Global_ESP_Buffer , Global_ESP_Server_Network_Error , _ESP_SIZE_SER_NO_NETWORK_CONNECTED ,0) ;
				if(LOC_u8Dummy)
					LOC_Result = ESP_NETWORK_NOT_CONNECTED	;
				else
					LOC_Result = ESP_UNDEFINED_CMD ;
			}
			else if ((Global_BufferCounter) == _ESP_SERV_ALREADY_CONNECTED)
			{
				// Already Server Connected
				LOC_u8Dummy = ESP_u8Comp2wholeReqays(Global_ESP_Buffer , Global_ESP_Serv_AlreadyConnected , _ESP_SERV_ALREADY_CONNECTED ,0) ;
				if(LOC_u8Dummy)
					LOC_Result = ESP_SERVER_CONNECTED	;
				else
					LOC_Result = ESP_UNDEFINED_CMD ;
			}
			else if((Global_BufferCounter) == _ESP_SIZE_OF_SERV_CONNECTED)
			{
				// Connected
				LOC_u8Dummy = ESP_u8Comp2wholeReqays(Global_ESP_Buffer , Global_ESP_Serv_Connected , _ESP_SIZE_OF_SERV_CONNECTED ,0) ;
				if(LOC_u8Dummy)
					LOC_Result = ESP_SERVER_CONNECTED	;
				else
					LOC_Result = ESP_UNDEFINED_CMD ;
			}

			else
			{
				LOC_Result = ESP_UNDEFINED_CMD ;
			}
			Global_BufferCounter = 0 ;
		}
	}
	return LOC_Result ;
}

static void ESP_voidUSARTRecieved(u16 copy_u16data)
{
	if(Global_u8IsRequest == 1 )
	{
		Global_ptr2UserRequestArray[Global_BufferCounter] = (u8)copy_u16data ;
		Global_BufferCounter++ ;
	}
	else
	{
		// Command Chk
		Global_ESP_Buffer[Global_BufferCounter] = (u8)copy_u16data ;
		Global_BufferCounter++ ;
	}
	#if ESP8266_LOGGINIG == LOGGING_ENABLE
		USART_voidSendDataSynch(USART_1, &copy_u16data);
	#endif
}
 void ESP_voidPrephInit(void)
{
    /*      RCC             */
	RCC_voidInitSysClocks() ;
	RCC_voidEnableClock(RCC_APB2,PORTA );
	RCC_voidEnableClock(RCC_APB2,14 );		/*	USART1	*/
    /*      NVIC            */  
	NVIC_voidEnableInterrupt(37);	        /* USART1   */
    /*      GPIO            */
	USART__VoidGPIO_SetPins(USART_1);
#if DEBUG_ESP	==	1
	GPIO_voidSetPinDirection(PORTA, PIN5, GPIO_INPUT_FLOATING);
	GPIO_voidSetPinValue(PORTA, PIN5, LOW);
#endif
    /*      USART           */
	_ESP_PRIV_USART_MEMBER_.USART_OperationMode         = USART_TRANCIVER ;
	_ESP_PRIV_USART_MEMBER_.USART_BuadRate              = 115200 ;
	_ESP_PRIV_USART_MEMBER_.USART_DataLength            = USART_8BIT ;
	_ESP_PRIV_USART_MEMBER_.USART_Parity                = USART_DISABLE_PARITY ;
	_ESP_PRIV_USART_MEMBER_.USART_StopBit               = USART_1_STOPBIT ;
	_ESP_PRIV_USART_MEMBER_.USART_HWFlowControl         = USART_HW_FLOW_CONTROLLED_DISALBED ;
	_ESP_PRIV_USART_MEMBER_.USART_IdleLevel             = USART_IDLE_LOW ;
	_ESP_PRIV_USART_MEMBER_.USART_DataSampling          = USART_LEADING_EDGE ;
	_ESP_PRIV_USART_MEMBER_.USART_IRQ_t                 = USART_ENABLE_RXNE_IRQs ;
	_ESP_PRIV_USART_MEMBER_.USART_DMA                   = DMA_DISABLE ;
	_ESP_PRIV_USART_MEMBER_.P_IRQ_CallBack              = ESP_voidUSARTRecieved ;
	USART_voidInit(USART_1, &_ESP_PRIV_USART_MEMBER_);



}
static u8 ESP8266_u8WriteCMD(u8 *ptr_u8CMD , u16 copy_u16TimeOut,typoChk_t typOfChk)
{
	u8 LOC_u8Result = 0 ;
	USART_voidSendStringWithDelimiterSynch(USART_1 , ptr_u8CMD , '\0' );
#if DEBUG_ESP == 1
while(!GPIO_u8GetPinValue(PORTA, PIN5)) ;
#endif
	if(typOfChk != ESP_WAIT_CMD)
	{
		STK_voidSetBusyWait_MS(copy_u16TimeOut);
		if(ESP_SKIP_VALIDATION != typOfChk)
			LOC_u8Result = ESP_voidValidRecieved(typOfChk);
		else
		{
			Global_BufferCounter = 0 ;
		}
	}
	return LOC_u8Result ;
}

/******************************************************************************
* Function Definitions
*******************************************************************************/
void ESP8266_voidInit(void)
{

	u8 LOC_u8Result = 0 ;
    ESP_voidPrephInit(); 
	/*				1-	Disable Echo 							*/
    (void)ESP8266_u8WriteCMD( (u8*)"ATE0\n\r\0" , _ESP_TIME_OUT_IN_MS,ESP_WAIT_CMD);


    /*  2- Sending AT Command To Check ESP8266 Is Working Or Not   */
    LOC_u8Result = ESP8266_u8WriteCMD( (u8*)"AT\n\r\0" , _ESP_TIME_OUT_IN_MS,AT_COMMAND_CHK);

	if (LOC_u8Result != ESP_OK_CMD){ /* 	<TODO Error>	*/ return ; }
	/*	3- Set in Station Mode	*/
    LOC_u8Result = ESP8266_u8WriteCMD( (u8*)"AT+CWMODE=1\n\r\0" , _ESP_TIME_OUT_IN_MS,AT_COMMAND_CHK);

	if (LOC_u8Result != ESP_OK_CMD){ /* 	<TODO Error>	*/ return ; }

}
void ESP8266_voidConnectToNetwork(u8* SSID, u8* Password)
{
	u8 LOC_u8Result = 0 ;
	// AT+CWJAP_CUR="xD","abc123456789"
	(void)ESP8266_u8WriteCMD( (u8*)"CWJAP_CUR=\"" , 0 ,ESP_WAIT_CMD);
	(void)ESP8266_u8WriteCMD( (u8*)SSID 		  , 0 ,ESP_WAIT_CMD);
	(void)ESP8266_u8WriteCMD( (u8*)"\",\"" 		  , 0 ,ESP_WAIT_CMD);
	(void)ESP8266_u8WriteCMD( (u8*)Password		  , 0 ,ESP_WAIT_CMD);
	LOC_u8Result= ESP8266_u8WriteCMD( (u8*)"\"\n\r" , _ESP_TIME_OUT_IN_MS ,ESP_CONNECT_NETWORK);
#if DEBUG_ESP == 1
while(!GPIO_u8GetPinValue(PORTA, PIN5)) ;
#endif
	if (LOC_u8Result != ESP_NETWORK_CONNECTED){ /* 	<TODO Error>	*/ return ; }
}
void ESP8266_voidConnectToServerTCP(u8* Copy_u8Domain , u8 * Copy_u8PortNumber )
{
	u8 LOC_u8Result = 0 ;
	Global_ServerIP =  Copy_u8Domain ;
	Global_ServerPortNumber = Copy_u8PortNumber  ;
	(void)ESP8266_u8WriteCMD( (u8*) "AT+CIPSTART=\"TCP\",\"", 0 ,ESP_WAIT_CMD);
	(void)ESP8266_u8WriteCMD( (u8*) Copy_u8Domain  			, 0 ,ESP_WAIT_CMD);
	(void)ESP8266_u8WriteCMD( (u8*) "\","		 		    , 0 ,ESP_WAIT_CMD);
	(void)ESP8266_u8WriteCMD( (u8*)	Copy_u8PortNumber	 	, 0 ,ESP_WAIT_CMD);
	LOC_u8Result= ESP8266_u8WriteCMD( (u8*)"\n\r" , _ESP_TIME_OUT_IN_MS ,ESP_CONNECT_SERVER);
#if DEBUG_ESP == 1
while(!GPIO_u8GetPinValue(PORTA, PIN5)) ;
#endif
	if (LOC_u8Result != ESP_SERVER_CONNECTED){ /* 	<TODO Error>	*/ return ; }
}

void ESP8266_voidHTTPRequest( u8 *copy_u8ReqMethod, u8 * copy_u8Http ,u8 * ptr2ArrHoldsData , u8 *ptr2ReceivedBufferSize)
{
	u16 LOC_u16Size;
	u16 LOC_u16Counter ;
	u8 wholeReq[100] ;
	u8 LengthofData[20] ;
	Global_ptr2UserRequestArray = ptr2ArrHoldsData ;
	Global_u8IsRequest = 1 ;

	/*	Concatenate  	*/
	while(copy_u8ReqMethod[LOC_u16Counter] != '\0')
	{
		wholeReq[LOC_u16Counter] = copy_u8ReqMethod[LOC_u16Counter] ;
		LOC_u16Counter++ ;
	}
	wholeReq[LOC_u16Counter] = ' ' ;
	LOC_u16Counter++ ;
	LOC_u16Size = 0  ;
	while(copy_u8Http[LOC_u16Size] != '\0')
	{
		wholeReq[LOC_u16Counter] = copy_u8Http[LOC_u16Size]  ;
		LOC_u16Size++ ;
		LOC_u16Counter++ ;
	}
	wholeReq[LOC_u16Counter] = '\n' ;
	LOC_u16Counter++ ;
	wholeReq[LOC_u16Counter] = '\r' ;
	LOC_u16Counter++ ;
	LOC_u16Size = LOC_u16Counter ;
    snprintf(LengthofData, 20, "%d", LOC_u16Size);
    /*	Reconnect to Server	*/
	ESP8266_voidConnectToServerTCP(Global_ServerIP , Global_ServerPortNumber);
	/*	Send Length of Data	*/
	(void)ESP8266_u8WriteCMD( (u8*) "AT+CIPSEND=", 0 ,ESP_SKIP_VALIDATION);
	(void)ESP8266_u8WriteCMD( (u8*) LengthofData	  	 , 0 ,ESP_SKIP_VALIDATION);
	(void)ESP8266_u8WriteCMD( (u8*)"\n\r" , _ESP_TIME_OUT_IN_MS , ESP_SKIP_VALIDATION );
	/*	Send Request	*/
	(void)ESP8266_u8WriteCMD( (u8*) wholeReq , _ESP_TIME_OUT_IN_MS , ESP_SKIP_VALIDATION );
	*ptr2ReceivedBufferSize = Global_BufferCounter ;
	Global_u8IsRequest = 0 ;
}
void ESP8266_voidReset(void)
{
	USART_voidSendStringWithDelimiterSynch(USART_1 , (u8*)"AT+RST\n\r\0" , '\0' );

}
/************************************* End of File ******************************************/
