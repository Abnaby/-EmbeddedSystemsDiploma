/**
* @file I2C_interface.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
 * @version 0.2
 * @date 2022-11-15
 *
 */

#ifndef I2C_INTERFACE_H 
#define I2C_INTERFACE_H 

#include "I2C_private.h"



/******************************************************************************
* Includes
*******************************************************************************/




/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/




/******************************************************************************
* Configuration Constants
*******************************************************************************/




/******************************************************************************
* Macros
*******************************************************************************/



/******************************************************************************
* ENUMs
*******************************************************************************/
typedef enum
{
	I2C_STANDART_MODE_50K_HZ 		= 50000U  ,
	I2C_STANDART_MODE_100K_HZ		= 100000U
}I2C_ClockSpeed_t;

typedef enum
{
	I2C_STRETCH_MODE_ENABLE			=		0 ,
	I2C_STRETCH_MODE_DISABLE		=		I2C_CR1_NOSTRETCH ,

}I2C_ClockStretch_t;


typedef enum
{
	I2C_I2C_MODE					=	0	,
	I2C_SMBus_MODE					=	I2C_CR1_SMBUS
}I2C_Mode_t;

typedef enum
{
	I2C_SLAVE_7_BIT_ADDRESS			= 0	,
	I2C_SLAVE_10_BIT_ADDRESS 		= (1<<15)					// Not Supported Yet
}I2C_SlaveAddressingMode_t;

typedef enum
{
	I2C_GENERAL_CALL_DISABLE        = 0 ,
	I2C_GENERAL_CALL_ENABLE         = I2C_CR1_ENGC


}I2C_GenealCallAdressDetection_t;

typedef enum
{
	I2C_EV_STOP,
	I2C_ERROR_AF,
	I2C_EV_ADDR_Matched,
	I2C_EV_DATA_REQ,				//the APP layer should send the data(I2C_Slave_SendData) in this state
	I2C_EV_DATA_RCV					//the APP layer should read the data(I2C_Slave_ReceiveData) in this state
}Slave_State_t;
typedef struct
{
	u16 								I2C_SLAVE_DUAL_ADDRESSING	;			//	0- DISALBE			1- ENABLE
	I2C_SlaveAddressingMode_t 			I2C_SlaveAddressingMode	    ;			// see @ref I2C_SlaveAddressingMode_t
	u16 								I2C_PRIMARY_SLAVE_ADDRESS	;
	u16 								I2C_SECONDARY_SLAVE_ADDRESS	;


}I2C_SlaveAddressing_t;

typedef enum
{
	I2C_1 = (u32) I2C1	,
	I2C_2 = (u32) I2C1
}I2C_Selection_t;

typedef enum
{
	I2C_START	,
	I2C_REPEATED_START
}I2C_startState_t;

typedef enum
{
	I2C_END_WITH_STOP	,
	I2C_END_WITHOUT_STOP
}I2C_stopState_t;
typedef enum
{
	I2C_FLAG_RESET ,
	I2C_FLAG_SET
}I2C_FlagsState_t ;

typedef enum
{
	I2C_BUSY_FLAG	,
	I2C_EV5			,
	I2C_EV6			,
	I2C_EV8			,
	I2C_EV8_1		,
	I2C_EV8_2		,
	I2C_EV7			,
	MASTER_BYTE_TRANSMITING = (u32)0x00070080
}I2C_Flags_t;

typedef enum
{
	I2C_MASTER_TX ,
	I2C_MASTER_RX
}I2C_MasterDirection_t;
typedef enum
{
	I2C_DMA_DISABLE = 0 ,
	I2C_DMA_ENABLE = I2C_CR2_DMAEN
}I2C_DMA_t;
/******************************************************************************
* Config Struct
*******************************************************************************/
typedef struct
{
	 I2C_ClockStretch_t						I2C_ClockStretch ;		// This is used to specify clock stretching in slave mode
	 I2C_Mode_t								I2C_Mode	;			// Specify The I2C Mode
	 I2C_ClockSpeed_t						I2C_ClockSpeed	;
	 I2C_SlaveAddressing_t 					I2C_SlaveAddressing	;
	 I2C_GenealCallAdressDetection_t		I2C_GenealCallAdressDetection ;
	 I2C_DMA_t								I2C_DMA						  ;
}I2C_Config_t;







/******************************************************************************
* Variables
*******************************************************************************/




/******************************************************************************
* Function Prototypes
*******************************************************************************/

/**
* @brief 				- initialize the I2Cx  according to the specified parameter
* @param 	 			- I2Cx : where x can be (1,2 depending on device used)
* @param 	 			- I2C_UserStruct : I2C configuration Specified by the user
* @retval 				- none
* Note					- Support for I2C Master Send/Receive Only
*/

void I2C_Init(I2C_Selection_t I2Cx, I2C_Config_t* I2C_UserStruct);
/**
* @brief 				- set GPIO pins connected to I2C peripheral according to recommended configuration
* @param [in] 			- I2Cx : where x can be (1,2 depending on device used)
* @retval 				- None
* Note					- None
*/
void I2C_VoidGPIO_SetPins(I2C_Selection_t I2Cx);
/**
* @brief 				- Set I2C to transmit data buffer passed from the user
* @param 	 			- I2Cx : where x can be (1,2 depending on device used)
* @param 	 			- copy_u16SlaveAddress : the address of the device slave we will write on it
* @param 	 			- ptr_u8Data : pointer on the buffer of first element
* @param 	 			- copu_u16DataLength : number of elements
* @param 	 			- I2C_startState : To choose using repeated start or JUST Start
* @param 	 			- I2C_stopState : To choose ending by stop condition or not
* @retval 				- None
* Note					- Master Will be based on  Polling Mechanism
*/
void I2C_voidMasterTransmit(I2C_Selection_t I2Cx , u16 copy_u16SlaveAddress , u8* ptr_u8Data , u16 copy_u16DataLength , I2C_startState_t I2C_startState , I2C_stopState_t I2C_stopState);

/**
* @brief 				- Set I2C to Received data buffer passed from the user
* @param 	 			- I2Cx : where x can be (1,2 depending on device used)
* @param 	 			- copy_u16SlaveAddress : the address of the device slave we will write on it
* @param 	 			- ptr_u8Data : pointer on the buffer of first element
* @param 	 			- copu_u16DataLength : number of elements
* @param 	 			- I2C_startState : To choose using repeated start or JUST Start
* @param 	 			- I2C_stopState : To choose ending by stop condition or not
* @retval 				- None
* Note					- Master Will be based on  Polling Mechanism
*/
void I2C_voidMasterReceive(I2C_Selection_t I2Cx , u16 copy_u16SlaveAddress , u8* ptr_u8Data , u16 copy_u16DataLength , I2C_startState_t I2C_startState , I2C_stopState_t I2C_stopState);


/**
* @brief 				- Set I2C to Transmit By DMA
* @param 	 			- I2Cx : where x can be (1,2 depending on device used)
* @param 	 			- copy_u16SlaveAddress : the address of the device slave we will write on it
* @param 	 			- I2C_startState : To choose using repeated start or JUST Start
* @retval 				- None
* Note					- Master Will be based on DMA
* 						- Send Stop Condition on DMA_IRQ
*/
void I2C_voidMasterTransmitDMA(I2C_Selection_t I2Cx , u16 copy_u16SlaveAddress , I2C_startState_t I2C_startState);



/**
* @brief 				- Get Address of Peripheral for DMA
* @param 	 			- I2Cx : where x can be (1,2 depending on device used)
* @param 	 			- copy_u16SlaveAddress : the address of the device slave we will write on it
*/

void I2C_voidGetDMA_PeripheralAddress(I2C_Selection_t I2Cx , u32* ptr_u32PeripheralAddress);


/*															GENERAIC 									*/
void I2C_voidGenerateStart(I2C_Selection_t I2Cx , I2C_startState_t I2C_startState);
I2C_FlagsState_t I2C_GetFlags(I2C_Selection_t I2Cx , I2C_Flags_t I2C_Flag);
void I2C_voidSendAddress(I2C_Selection_t I2Cx , u16 copy_u16SlaveAddress , I2C_MasterDirection_t I2C_MasterDirection);
void I2C_voidGenerateStop(I2C_Selection_t I2Cx);
#endif
/************************************* End of File ******************************************/
