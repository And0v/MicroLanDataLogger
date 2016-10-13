
#include <Arduino.h>
#include <FreeRTOS_AVR.h>
#include <DS2480B.h>


void taskMicroLanReader(){
    
}

DS2480B ds(&Serial1);

void setup(void) {
  Serial.begin(9600);
  Serial1.begin(9600);
  ds.begin();
}





void loop() {
    digitalWrite(13, HIGH); // set the LED on
    delay(1000); // wait for a second
    digitalWrite(13, LOW); // set the LED off
    delay(1000); // wait for a second
}
