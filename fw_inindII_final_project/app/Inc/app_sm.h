/*
 * app_sm.h
 *
 *  Created on: Oct 28, 2025
 *      Author: pedro-bittencourt
 */

#ifndef INC_APP_SM_H_
#define INC_APP_SM_H_

#define XMACRO_STATE_LIST                                   \
		X(0, STATE_RESET,   sm_reset_state  , "RESET"  )    \
		X(1, STATE_IDLE,    sm_idle_state   , "IDLE"   )    \
		X(2, STATE_HEAT,    sm_heat_state   , "HEAT"   )    \
		X(3, STATE_COOL,    sm_cool_state   , "COOL"   )    \
		X(4, STATE_CONTROL, sm_control_state, "CONTROL")

void app_sm_init(void);



#endif /* INC_APP_SM_H_ */
