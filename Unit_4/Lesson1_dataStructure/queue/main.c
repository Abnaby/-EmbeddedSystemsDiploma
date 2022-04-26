#include <stdio.h>
#include "queueAPIs.h"
/********************************** Example ***********************/
queue_t q ;
int main()
{
    queue_create(&q);
    queue_add(5,&q);
    queue_add(15,&q);
    queue_add(25,&q);
    queue_add(35,&q);
    queue_add(45,&q);
    int get =0 ;

    queue_print(&q);

    return 0 ;
}
