
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "RCC_interface.h"
#include "COMMON.h"
#include "STK_interface.h"
#include "GPIO_interface.h"
#include "SPI_interface.h"
	volatile u16 x ;

void xDelay(u32 time)
{
	u32 i;
	u32 j;
	for(i = time;i > 0;i--)
		for(j = 1000;j > 0;j--);

}




#define MCU_ACT_AS_MASTER
void SPI_IRQ_Callback(SPI_IRQ_SRC IRQ_Src);
int main(void){
	/* INIT Clocks */
	RCC_voidInitSysClocks() ;
	RCC_voidEnableClock(RCC_APB2,PORTA );
	RCC_voidEnableClock(RCC_APB2 , 0 );
	RCC_voidEnableClock(RCC_APB2,12 );

	STK_voidInit();
	/*	INIT SPI	*/
	SPI_config mySPI ;
	mySPI.SPI_CommMode = SPI_FULL_DOUPLEX ;
	mySPI.SPI_DataOrder = SPI_MSB_FIRST  ;
	mySPI.SPI_DataSize =SPI_8_BIT_DATA  ;
	mySPI.SPI_IdleLevel = SPI_IDLE_HIGH ;
	mySPI.SPI_DataSampling = SPI_TRAILING_EDGE ;
	mySPI.SPI_BuadRate = SPI_BUAD_PRESCALED_BY_8;
#ifdef MCU_ACT_AS_MASTER
	mySPI.SPI_Mode = SPI_MASTER ;
	mySPI.SPI_IRQ =SPI_IRQ_DISABLED ;
	mySPI.SPI_SlaveSelectMangment =SPI_SSM_SW_SLAVE_SET ;
	mySPI.P_IRQ_CallBack = NULL ;
	/*	Config PA4 GPIO	*/
	GPIO_voidSetPinDirection(PORTA, PIN4,GPIO_OUTPUT_10MHZ_PUSH_PULL) ;
	// Force the Slave Select (HIGH) for idle Mode
	GPIO_voidSetPinValue(PORTA, PIN4, HIGH);

#endif
#ifdef MCU_ACT_AS_SLAVE
	/*	NVIC	*/
	NVIC_voidEnableInterrupt(35);
	mySPI.SPI_Mode = SPI_SLAVE ;
	mySPI.SPI_IRQ =SPI_IRQ_ENABLE_RXNEIE ;
	mySPI.SPI_SlaveSelectMangment =SPI_SSM_HW_SLAVE ;
	mySPI.P_IRQ_CallBack = SPI_IRQ_Callback ;

#endif
	SPI_voidInit(SPI_1, &mySPI);
	SPI_VoidGPIO_SetPins(SPI_1);

	while(1)
	{

		#ifdef MCU_ACT_AS_MASTER
		for(u16 i = 0 ; i <200 ; i++)
		{
			GPIO_voidSetPinValue(PORTA, PIN4 , LOW) ;
			SPI_voidSend_RecieveDataSynch(SPI_1, &i,&x);
			GPIO_voidSetPinValue(PORTA, PIN4 , HIGH) ;
			STK_voidSetBusyWait_MS(500);
		}

		#endif



	}

}

void SPI_IRQ_Callback(SPI_IRQ_SRC IRQ_Src)
{
	#ifdef MCU_ACT_AS_SLAVE
	if(IRQ_Src.SPI_RXNE)
	{
		SPI_voidRecieveDataSynch(SPI_1, (u16*)&x);
	}
	#endif

}
