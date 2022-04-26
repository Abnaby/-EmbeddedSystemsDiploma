#ifndef _MODULE_COMMON_
#define _MODULE_COMMON_

#define STATE_DEFINE(_stateFuncName_) void ST_##_stateFuncName_(void)
#define STATE(_stateFuncName_)  ST_##_stateFuncName_

/* CONNECTION */
void US2CA_signal(int distance);
void CA2MOT_signal(int speed);

#endif
