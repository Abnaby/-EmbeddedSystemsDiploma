#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "RCC_interface.h"
#include "GPIO_interface.h"
#include "NVIC_interface.h"
#include "PSRC_interface.h"

#include "../MRTOS/inc/MRTOS_Scheduler.h"

volatile u8 test ;



MRTOS_Task T1;
MRTOS_Task T2;
MRTOS_Task T3;
MRTOS_Task T4;





void T1_Func(void);
void T2_Func(void);
void T3_Func(void);
void T4_Func(void);
int i = 0 ;
int t1 = 0 , t2 = 0,t3,t4 ;
extern u32 counter ;

MRTOS_Mutex mutex1 ;
int main(void){

	(void)MRTOS_voidInit();
	/*****************		TASK 1 INIT		********************/
	T1.taskID			=		1	;
	T1.taskPriority		=		1	;
	T1.taskStackSize		=		100 ;
	T1.pTaskFcn			=		T1_Func ;
	(void)MRTOS_voidCreateTask(&T1);



	/*****************		TASK 2 INIT		********************/
	T2.taskID			=		2	;
	T2.taskPriority		=		2	;
	T2.taskStackSize		=		100 ;
	T2.pTaskFcn			=		T2_Func ;
	(void)MRTOS_voidCreateTask(&T2);
	/*****************		TASK 3 INIT		********************/
	T3.taskID			=		3	;
	T3.taskPriority		=		3	;
	T3.taskStackSize		=		100 ;
	T3.pTaskFcn			=		T3_Func ;
	(void)MRTOS_voidCreateTask(&T3);
	/*****************		TASK 4 INIT		********************/
	T4.taskID			=		4	;
	T4.taskPriority		=		4	;
	T4.taskStackSize		=		100 ;
	T4.pTaskFcn			=		T4_Func ;
	(void)MRTOS_voidCreateTask(&T4);

	/****************	MUTEX	 *************************/

	 MRTOS_CreateMutex(&mutex1);

	/*****************		Active Tasks		*****************/
	(void)MRTOS_voidActiveTask(&T1);


	/*****************		Start Scheduler		*****************/
	MRTOS_voidStartScheduler();


}

void T1_Func(void)
{
	/*			init clock			*/
	static u32 count = 0 ;
	while(1)
	{
		t1 ^= 1 ;
		count++ ;
		if(count == 100)
		{
			MRTOS_AquireMutex(&mutex1, &T1);
			(void)MRTOS_voidActiveTask(&T2);
		}
		else if (count == 200)
		{
			count = 0 ;
			MRTOS_ReleaseMutex(&mutex1, &T1);
		}

	}

}
void T2_Func(void)
{
	/*			init clock			*/
	static u32 count = 0 ;
	while(1)
	{
		t2 ^= 1 ;
		count++ ;
		if(count == 100)
		{
			(void)MRTOS_voidActiveTask(&T3);
		}
		else if (count == 200)
		{
			count = 0 ;
			MRTOS_voidTerminateTask(&T2);
		}

	}
}

void T3_Func(void)
{
	/*			init clock			*/
	static u32 count = 0 ;
	while(1)
	{
		t3 ^= 1 ;
		count++ ;
		if(count == 100)
		{
			(void)MRTOS_voidActiveTask(&T4);
		}
		else if (count == 200)
		{
			count = 0 ;
			MRTOS_voidTerminateTask(&T3);


		}

	}
}
void T4_Func(void)
{
	/*			init clock			*/
	static u32 count = 0 ;
	while(1)
	{
		t4 ^= 1 ;
		count++ ;
		if(count == 3)
		{
			MRTOS_AquireMutex(&mutex1, &T4);
		}

		if (count == 200)
		{
			count = 0 ;
			MRTOS_ReleaseMutex(&mutex1, &T4);
			MRTOS_voidTerminateTask(&T4);

		}

	}
}
