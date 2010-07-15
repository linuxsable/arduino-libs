/*
  An example use of the LED library.
  Created by Tyler Van Hoomissen <linuxsable@gmail.com>
  July 12, 2010
  License: MIT
*/

#include <LED.h>

const int LEDS_LENGTH = 4;
int leds[LEDS_LENGTH] = {0, 1, 2, 3};
int x = 0;

void setup() {
    for (size_t i = 0; i < LEDS_LENGTH; i++) {
        pinMode(leds[i], OUTPUT);
    }
}

void loop() {
    if (x < 15) {
        for (size_t i = 0; i < LEDS_LENGTH; i++) {
            led_on(leds[i]);
            delay(50);
            led_off(leds[i]);
            delay(50);
        }
    }
  
    if (x > 15 and x < 30) {
        for (size_t i = 0; i < LEDS_LENGTH; i++) {
            led_on(leds[i]);
            delay(25);
            led_off(leds[i]);
            delay(25);
        }
    }
  
    if (x > 30 and x < 45) {
        led_flash_all(leds, LEDS_LENGTH, 25);
    }
  
    if (x > 45 and x < 60) {
        led_flash_all(leds, LEDS_LENGTH, 100);
    }
  
    if (x > 60 and x < 63) {
        led_sequence_all(leds, LEDS_LENGTH, 500);
    }

    if (x > 63 and x < 66) {
        led_pulsate_and_sequence_all(leds, LEDS_LENGTH, 500);
    }
  
    if (x >= 66) {
        x = 0;
    } else {
        x++;
    }
}