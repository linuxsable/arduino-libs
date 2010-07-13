/*
  LED.h - Arudino library for handling & animating LEDs.
  Created by Tyler Van Hoomissen <linuxsable@gmail.com>
  July 12, 2010
  License: MIT
*/

#ifndef LED_h
#define LED_h

#include "WProgram.h"

void led_on(int led);
void led_off(int led);

void led_all_on(int leds[], int leds_length);
void led_all_off(int leds[], int leds_length);

void led_flash_all(int leds[], int leds_length, int speed);
void led_sequence_all(int leds[], int leds_length, int speed);
void led_pulsate_and_sequence_all(int leds[], int leds_length, int speed);

#endif