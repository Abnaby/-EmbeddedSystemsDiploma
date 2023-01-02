/**
 * @file I2C_program.c
 * @author Mohamed Abd El-Naby (mahameda.naby@gmail.com)
 * @brief
 * @version 0.2
 * @date 2022-11-15
 *
 */
/******************************************************************************
 * Includes
 *******************************************************************************/
#include "../../LIB/STD_TYPES/STD_TYPES.h"
#include "../../LIB/BIT_MATH/BIT_MATH.h"
#include "../../LIB/COMMON/COMMON.h"

#include "../GPIO/GPIO_interface.h"
#include "I2C_interface.h"
#include "I2C_config.h"
#include "I2C_private.h"










/******************************************************************************
 * Module Preprocessor Constants
 *******************************************************************************/

#define I2C_RETURN_WITH_ACK()				ACCESS_I2Cx(I2Cx)->CR1 |= I2C_CR1_ACK
#define I2C_RETURN_NACK()					ACCESS_I2Cx(I2Cx)->CR1 &= ~I2C_CR1_ACK_Msk

#define PClock_RCC						(u32)8000000
/******************************************************************************
 * Module Preprocessor Macros
 *******************************************************************************/

#define I2C1_INDEX	0
#define I2C2_INDEX	1



/******************************************************************************
 * Typedefs
 *******************************************************************************/
#define ACCESS_I2Cx(I2C_x) 	((I2C_t *)I2C_x)



/******************************************************************************
 * Module Variable Definitions
 *******************************************************************************/
I2C_Config_t Global_I2C_Confg[2]  ;



/******************************************************************************
 * Function Prototypes
 *******************************************************************************/



/************************************* STATIC APIs *******************************************/
static void I2C_voidTimingInit(I2C_Selection_t I2Cx, u32 PClock , I2C_ClockSpeed_t I2C_Clock_Speed)
{
	/*	Get Whole ICR2 Reg Value */
	u16 I2C_Temp_Reg = ACCESS_I2Cx(I2Cx)->CR2 ;
	I2C_Temp_Reg &= ~ (I2C_CR2_FREQ_Msk) ;
	/*	SET FREQ BASED ON PCLOCK1 FREQ	*/
	u16 FreqRange = PClock / 1000000 ;
	I2C_Temp_Reg |= FreqRange ;
	ACCESS_I2Cx(I2Cx)->CR2 = I2C_Temp_Reg ;
	/* Config I2C_CCR 	*/
	ACCESS_I2Cx(I2Cx)->CR1 &=~(I2C_CR1_PE);
	/*	Config Standert Mode */
	I2C_Temp_Reg  =  0 ;
	if(I2C_Clock_Speed == I2C_STANDART_MODE_50K_HZ || I2C_Clock_Speed == I2C_STANDART_MODE_100K_HZ)
	{
		// CCR CALC
		// Tclk/2 = CRR * Tpclk1
		// CCR = Tclk / (2 * Tpclk1)
		// CRR = Fpclk1 / (2 * I2C_Clock_freq )

		u16 result = (u16)(PClock /(I2C_Clock_Speed <<1 ));  // ( << 1 ) = * 2
		I2C_Temp_Reg |= result;
		ACCESS_I2Cx(I2Cx)->CCR =  I2C_Temp_Reg ;
		/*--------------------------  Configure Rise time register  --------------*/
		I2C_Temp_Reg = 0 ;
		result = (u16)((PClock/1000000) )+1;
		I2C_Temp_Reg |= result;
		ACCESS_I2Cx(I2Cx)->TRISE = I2C_Temp_Reg ;

	}
	else
	{
		// <TODO ERROR> FAST MODE NOT SUPORTTED
	}
}




/******************************************************************************
 * Function Definitions
 *******************************************************************************/

void I2C_Init(I2C_Selection_t I2Cx, I2C_Config_t* I2C_UserStruct)
{


	/*	Add Global Var	*/
	if(I2Cx == (u32)I2C1)
	{
		Global_I2C_Confg[I2C1_INDEX] =  *I2C_UserStruct ;
	}
	else if(I2Cx == (u32)I2C2)
	{
		Global_I2C_Confg[I2C2_INDEX] =  *I2C_UserStruct ;
	}
	else
	{
		// <TODO> ERROR IN I2C SELECTION
	}
	/* CHK Mode	*/
	if(I2C_UserStruct->I2C_Mode == I2C_I2C_MODE)
	{
		/************************************ TIMING INIT  *******************************************/
		I2C_voidTimingInit(I2Cx , PClock_RCC , I2C_UserStruct->I2C_ClockSpeed);

		/*********************************** CR1 *********************************************************/
		u32 I2C_TEMP_REG = ACCESS_I2Cx(I2Cx)->CR1 ;
		I2C_TEMP_REG |=    (I2C_UserStruct->I2C_ClockStretch)
				     |     (I2C_UserStruct->I2C_GenealCallAdressDetection)
					 |     (I2C_UserStruct -> I2C_ClockStretch);
		ACCESS_I2Cx(I2Cx)->CR1 |= I2C_TEMP_REG ;
		I2C_TEMP_REG = 0 ;

		/********************************* OAR1 2 *****************************************************************/
		if(I2C_UserStruct->I2C_SlaveAddressing.I2C_SLAVE_DUAL_ADDRESSING == 1 )
		{
			// DUAL ADDRESSING
			I2C_TEMP_REG = I2C_OAR2_ENDUAL ;
			I2C_TEMP_REG |= I2C_UserStruct->I2C_SlaveAddressing.I2C_SECONDARY_SLAVE_ADDRESS << I2C_OAR2_ADD2_Pos ;
			I2C_TEMP_REG |= ACCESS_I2Cx(I2Cx)->OAR2  ;
			I2C_TEMP_REG = 0 ;

		}
		// Primary Address
		I2C_TEMP_REG = (I2C_UserStruct->I2C_SlaveAddressing.I2C_PRIMARY_SLAVE_ADDRESS) << 1 ;
		I2C_TEMP_REG |= (I2C_UserStruct->I2C_SlaveAddressing.I2C_SlaveAddressingMode) ;
		ACCESS_I2Cx(I2Cx)->OAR1 |= I2C_TEMP_REG   ;
		/* --------------------- Enable the Selected I2C Peripheral --------------------- */
		ACCESS_I2Cx(I2Cx)->CR1 |= I2C_CR1_PE;
		/*------------------------ DMA ----------------------------------------------------*/
		ACCESS_I2Cx(I2Cx)->CR2 |= I2C_UserStruct->I2C_DMA;
	}
	else
	{
		// <TODO> ERROR I2C SMBus Not Supported Yet
	}


}

void I2C_VoidGPIO_SetPins(I2C_Selection_t I2Cx)
{
	if(I2Cx == (u32)I2C1)
	{
		// PB6 :SCL
		// PB7 :SDA
		GPIO_voidSetPinDirection(PORTB, PIN6, GPIO_OUTPUT_10MHZ_AF_OPEN_DRAIN);
		GPIO_voidSetPinDirection(PORTB, PIN7, GPIO_OUTPUT_10MHZ_AF_OPEN_DRAIN);

	}
	else if(I2Cx == (u32)I2C2)
	{
		// PB10 :SCL
		// PB11 :SDA
		GPIO_voidSetPinDirection(PORTB, PIN10, GPIO_OUTPUT_10MHZ_AF_OPEN_DRAIN);
		GPIO_voidSetPinDirection(PORTB, PIN11, GPIO_OUTPUT_10MHZ_AF_OPEN_DRAIN);
	}
	else
	{
		// <TODO> ERROR IN I2C SELECTION
	}
}

void I2C_voidMasterTransmitDMA(I2C_Selection_t I2Cx , u16 copy_u16SlaveAddress , I2C_startState_t I2C_startState)
{

	volatile u32 LOC_u32DummyVar = 0 ;
	LOC_u32DummyVar++; // to ignore warning

	// 1. Set the START bit in I2C_CR1 register to generate start Condition
	I2C_voidGenerateStart(I2Cx, I2C_startState);

	// 2. Wait for EV5 5: SB=1, cleared by reading SR1 register followed by writing DR register with Address.
	while(!(I2C_GetFlags(I2Cx , I2C_EV5))) ;
	LOC_u32DummyVar = ACCESS_I2Cx(I2Cx)->SR1 ;

	// 3. Send Address
	I2C_voidSendAddress( I2Cx ,  copy_u16SlaveAddress , I2C_MASTER_TX);

	// 4. Wait for EV6: ADDR=1, cleared by reading SR1 register followed by reading SR2.
	while( !(I2C_GetFlags( I2Cx, I2C_EV6)));

	// 5. Check on [ Busy / MSL / TXE / TRA ] flags from SR1 and SR2 "Clear ADDR Flag"
	while(!(I2C_GetFlags( I2Cx, MASTER_BYTE_TRANSMITING)));


}
void I2C_voidMasterTransmit(I2C_Selection_t I2Cx , u16 copy_u16SlaveAddress , u8* ptr_u8Data , u16 copy_u16DataLength , I2C_startState_t I2C_startState , I2C_stopState_t I2C_stopState)
{


	u16 LOC_u16Counter = 0 ;
	volatile u32 LOC_u32DummyVar = 0 ;
	LOC_u32DummyVar++; // to ignore warning

	// 1. Set the START bit in I2C_CR1 register to generate start Condition
	I2C_voidGenerateStart(I2Cx, I2C_startState);

	// 2. Wait for EV5 5: SB=1, cleared by reading SR1 register followed by writing DR register with Address.
	while(!(I2C_GetFlags(I2Cx , I2C_EV5))) ;
	LOC_u32DummyVar = ACCESS_I2Cx(I2Cx)->SR1 ;

	// 3. Send Address
	I2C_voidSendAddress( I2Cx ,  copy_u16SlaveAddress , I2C_MASTER_TX);

	// 4. Wait for EV6: ADDR=1, cleared by reading SR1 register followed by reading SR2.
	while( !(I2C_GetFlags( I2Cx, I2C_EV6)));

	// 5. Check on [ Busy / MSL / TXE / TRA ] flags from SR1 and SR2 "Clear ADDR Flag"
	while(!(I2C_GetFlags( I2Cx, MASTER_BYTE_TRANSMITING)));

	// 6- Send Data
	for(LOC_u16Counter = 0 ; LOC_u16Counter <  copy_u16DataLength ; LOC_u16Counter++)
	{
		ACCESS_I2Cx(I2Cx)->DR = ptr_u8Data[LOC_u16Counter] ;
		// 7- Wait EV8: TxE=1, shift register not empty, data register empty, cleared by writing DR register
		while(!(I2C_GetFlags( I2Cx, I2C_EV8)));
	}
	// 8. Wait EV8_2: TxE=1, BTF = 1, Program Stop request. TxE and BTF are cleared by hardware by the Stop condition
	while(!(I2C_GetFlags( I2Cx, I2C_EV8_2)));
	while(!(I2C_GetFlags( I2Cx, I2C_EV8_1)));

	// 9. Stop Condition
	if(I2C_stopState == I2C_END_WITH_STOP)
		I2C_voidGenerateStop(I2Cx);
}


void I2C_voidMasterReceive(I2C_Selection_t I2Cx , u16 copy_u16SlaveAddress , u8* ptr_u8Data , u16 copy_u16DataLength , I2C_startState_t I2C_startState , I2C_stopState_t I2C_stopState)
{
	volatile u32 LOC_u32DummyVar = 0 ;
	u16 LOC_u16Counter = 0 ;
	LOC_u32DummyVar++; // to ignore warning

	// 1. Set the START bit in I2C_CR1 register to generate start Condition
	I2C_voidGenerateStart(I2Cx, I2C_startState);

	// 2. Wait for EV5 5: SB=1, cleared by reading SR1 register followed by writing DR register with Address.
	while(I2C_GetFlags(I2Cx , I2C_EV5)) ;
	LOC_u32DummyVar = ACCESS_I2Cx(I2Cx)->SR1 ;

	// 3. Send Address
	I2C_voidSendAddress( I2Cx ,  copy_u16SlaveAddress , I2C_MASTER_RX);

	// 4. Wait for EV6: ADDR=1, cleared by reading SR1 register followed by reading SR2.
	while( !(I2C_GetFlags( I2Cx, I2C_EV6)));

	// 5. ACK
	I2C_RETURN_WITH_ACK();

	// 6. Receive Data
	for(LOC_u16Counter = 0 ; LOC_u16Counter < copy_u16DataLength ; LOC_u16Counter++)
	{
		// Wait EV7: RxNE=1 Cleared by reading DR register
		while( !(I2C_GetFlags( I2Cx, I2C_EV7)));
		ptr_u8Data[LOC_u16Counter] = ACCESS_I2Cx(I2Cx)->DR ;
	}
	// 7- Send NACK after received all data
	I2C_RETURN_NACK() ;

	// 8- Chk Stop
	if(I2C_stopState == I2C_END_WITH_STOP)
		I2C_voidGenerateStop(I2Cx);



}

void I2C_voidGenerateStart(I2C_Selection_t I2Cx , I2C_startState_t I2C_startState)
{

	if(I2C_startState  == I2C_START )
	{
		// 1. Check Bus is Free Now
		while(I2C_GetFlags(I2Cx , I2C_BUSY_FLAG)) ; //because in repeated start bus already busy by me
	}

	// 2. Setting the START bit
	ACCESS_I2Cx(I2Cx)->CR1 |= I2C_CR1_START ;
}
void I2C_voidGenerateStop(I2C_Selection_t I2Cx)
{
	/* Generate Stop Condition */
	ACCESS_I2Cx(I2Cx)->CR1 |= I2C_CR1_STOP;
	(void)ACCESS_I2Cx(I2Cx)->SR1;
	(void)ACCESS_I2Cx(I2Cx)->SR2;
}
I2C_FlagsState_t I2C_GetFlags(I2C_Selection_t I2Cx , I2C_Flags_t I2C_Flag)
{
	I2C_FlagsState_t LOC_bitstatus = I2C_FLAG_RESET;
	u32 LOC_u32Reg = 0 ;
	switch(I2C_Flag)
	{
	case I2C_BUSY_FLAG :
	{
		if( (ACCESS_I2Cx(I2Cx)->SR2) & (I2C_SR2_BUSY) )
			LOC_bitstatus = I2C_FLAG_SET;
		else
			LOC_bitstatus = I2C_FLAG_RESET;
		break ;
	}
	case I2C_EV5 :
	{
		if( (ACCESS_I2Cx(I2Cx)->SR1) & (I2C_SR1_SB) )
			LOC_bitstatus = I2C_FLAG_SET;
		else
			LOC_bitstatus = I2C_FLAG_RESET;
		break;
	}
	case I2C_EV6 :
	{
		if( (ACCESS_I2Cx(I2Cx)->SR1) & (I2C_SR1_ADDR) )
			LOC_bitstatus = I2C_FLAG_SET;
		else
			LOC_bitstatus = I2C_FLAG_RESET;
		break;
	}
	case MASTER_BYTE_TRANSMITING :
	{
		/* Read The I2Cx Status Register */
		LOC_u32Reg = ((((u16)(ACCESS_I2Cx(I2Cx)->SR2))<<16) | ((u16)(ACCESS_I2Cx(I2Cx)->SR1))) & ((u32)0xFFFFFFFF) ;
		//Check whether last event contain THE I2C_EVENT
		if((LOC_u32Reg & MASTER_BYTE_TRANSMITING) == MASTER_BYTE_TRANSMITING)
			/* Success Last event contain THE I2C_EVENT */
			LOC_bitstatus = I2C_FLAG_SET;
		else
			/* Error Last event is different from THE I2C_EVENT */
			LOC_bitstatus = I2C_FLAG_RESET;
		break;
	}
	case I2C_EV8 :
	case I2C_EV8_1:
	{
		if( (ACCESS_I2Cx(I2Cx)->SR1) & (I2C_SR1_TXE) )
			LOC_bitstatus = I2C_FLAG_SET;
		else
			LOC_bitstatus = I2C_FLAG_RESET;

		break;
	}
	case I2C_EV8_2 :
	{
		if( (ACCESS_I2Cx(I2Cx)->SR1) & (I2C_SR1_BTF) )
			LOC_bitstatus = I2C_FLAG_SET;
		else
			LOC_bitstatus = I2C_FLAG_RESET;

		break;
	}
	case I2C_EV7 :
	{
		if( (ACCESS_I2Cx(I2Cx)->SR1) & (I2C_SR1_RXNE) )
			LOC_bitstatus = I2C_FLAG_SET;
		else
			LOC_bitstatus = I2C_FLAG_RESET;

		break;
	}
	}
	return LOC_bitstatus ;

}
void I2C_voidSendAddress(I2C_Selection_t I2Cx , u16 copy_u16SlaveAddress , I2C_MasterDirection_t I2C_MasterDirection)
{
	u8 index =  I2Cx == (u32)I2C1 ? I2C1_INDEX : I2C2_INDEX ;
	if(Global_I2C_Confg[index].I2C_SlaveAddressing.I2C_SlaveAddressingMode == I2C_SLAVE_7_BIT_ADDRESS)
	{

		copy_u16SlaveAddress = ((copy_u16SlaveAddress << 1)&(0xFE)) ;
		if(I2C_MasterDirection == I2C_MASTER_TX)
		{
			copy_u16SlaveAddress &= ~(0x01) ;
			ACCESS_I2Cx(I2Cx)->DR = copy_u16SlaveAddress ;
		}
		else if(I2C_MasterDirection == I2C_MASTER_RX)
		{
			copy_u16SlaveAddress |= (0x01) ;
			ACCESS_I2Cx(I2Cx)->DR = copy_u16SlaveAddress ;
		}
		else
		{
			// <TODO> ERROR IN I2C_MasterDirection
		}

	}
	else
	{
		// <TODO> Error 10_BIT MODE NOT SUPORTTED
	}
}


void I2C_voidGetDMA_PeripheralAddress(I2C_Selection_t I2Cx , u32* ptr_u32PeripheralAddress)
{
	u32 LOC_u32Result  ;
	LOC_u32Result = (u32)(&(ACCESS_I2Cx(I2Cx)->DR));
	*ptr_u32PeripheralAddress =LOC_u32Result ;
}

/************************************* End of File ******************************************/
