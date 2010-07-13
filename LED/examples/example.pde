/*
  An example use of the LED library.
  Created by Tyler Van Hoomissen <linuxsable@gmail.com>
  July 12, 2010
  License: MIT
*/

#include <LED.h>

const int LEDS_LENGTH = 3;

int leds[LEDS_LENGTH] = {0, 1, 2};
int x = 0;

void setup() {
  for (size_t i = 0; i < LEDS_LENGTH; i++) {
    pinMode(leds[i], OUTPUT);
  }
}

void loop() {
  if (x < 25) {
    for (size_t i = 0; i < LEDS_LENGTH; i++) {
      led_on(leds[i]);
      delay(25);
      led_off(leds[i]);
      delay(25);
    }
  }
  
  if (x > 25 and x < 50) {
    led_flash_all(leds, LEDS_LENGTH, 100);
  }
  
  if (x > 50 and x < 54) {
    if (rand() % 2 == 1) {
      led_pulsate_and_sequence_all(leds, LEDS_LENGTH, 500);
    } else {
      led_sequence_all(leds, LEDS_LENGTH, 500);
    }
  }
  
  if (x > 54) {
    x = 0;
  } else {
    x++;
  }
}