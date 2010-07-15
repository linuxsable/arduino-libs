/*
  LED.cpp - Arudino library for handling & animating LEDs.
  Created by Tyler Van Hoomissen <linuxsable@gmail.com>
  July 12, 2010
  License: MIT
*/

#include "WProgram.h"
#include "LED.h"

void led_on(int led) {
    digitalWrite(led, HIGH);
}

void led_off(int led) {
    digitalWrite(led, LOW);
}

void led_all_on(int leds[], int leds_length) {
    for (int i = 0; i < leds_length; i++) {
        led_on(leds[i]);
    }
}

void led_all_off(int leds[], int leds_length) {
    for (int i = 0; i < leds_length; i++) {
        led_off(leds[i]);
    }
}

void led_flash_all(int leds[], int leds_length, int speed) {
    led_all_on(leds, leds_length);
    delay(speed);
    led_all_off(leds, leds_length);
    delay(speed);
}

void led_sequence_all(int leds[], int leds_length, int speed) {
    led_all_off(leds, leds_length);
    delay(speed);
    for (int i = 0; i < leds_length; i++) {
        led_on(leds[i]);
        delay(speed);
    }
    led_all_off(leds, leds_length);
}

void led_sequence_up_and_down_all(int leds[], int leds_length, int speed) {
    led_all_off(leds, leds_length);
    delay(speed);
    for (int i = 0; i < leds_length; i++) {
        led_on(leds[i]);
        delay(speed);
    }
    for (int i = leds_length; i > 0; i--) {
        led_off(leds[i]);
        delay(speed);
    }
}

void led_pulsate_and_sequence_all(int leds[], int leds_length, int speed) {
    led_all_off(leds, leds_length);
    for (int i = 0; i < leds_length; i++) {
        for (int a = 0; a < 10; a++) {
            led_on(leds[i]);
            delay(25);
            led_off(leds[i]);
            delay(25);
        }
    }
    led_all_off(leds, leds_length);
}