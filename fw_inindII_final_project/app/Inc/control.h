/*
 * control.h
 *
 *  Created on: Oct 14, 2025
 *      Author: pedro-bittencourt
 */

#ifndef CONTROL_H_
#define CONTROL_H_

#define SAMPLING_PERIOD_S 1.0f

#define MAX_OUTPUT 999
#define MIN_OUTPUT 0

typedef struct control_out_s
{
	float P;
	float I;
	float D;

}control_out_t;

typedef struct control_pid_s
{
	float kp;
	float ki;
	float kd;

	float error;
	float error_1;
	float setpoint;

	control_out_t output;
	uint16_t u;

	float current;

	float sampling_period_s;

}control_pid_t;

void control_init_controller(control_pid_t *pid_handler, float kp, float ki, float kd, float setpoint, float sampling_period_s);

void control_get_u(control_pid_t *pid_handler);

void control_change_sp(control_pid_t *pid_handler, float sp);

#endif /* CONTROL_H_ */
