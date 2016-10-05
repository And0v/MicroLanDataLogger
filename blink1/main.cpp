/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.cpp
 * Author: andov
 *
 * Created on 4 октября 2016 г., 21:18
 */

#include <Arduino.h>

/*
 * 
 */
int main(void) {


    init();
    setup();
    for (;;)loop();

    return 0;
}

void setup() {
    // initialize the digital pin as an output.
    // Pin 13 has an LED connected on most Arduino boards:
    pinMode(13, OUTPUT);
}

void loop() {
    digitalWrite(13, HIGH); // set the LED on
    delay(1000); // wait for a second
    digitalWrite(13, LOW); // set the LED off
    delay(1000); // wait for a second
}