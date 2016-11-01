/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   sensors.h
 * Author: andov
 *
 * Created on 24 октября 2016 г., 20:39
 */

#ifndef SENSORS_H
#define SENSORS_H

#include "FreeRTOS_AVR.h"

extern QueueHandle_t xQueueSensors;

typedef struct {
    byte id[8];
    int16_t value;
} xSensor;



class MicroLanSensors
{
    const static int SENSORS_COUNT = 8;
    xSensor _sensors[SENSORS_COUNT];
    
public:
    MicroLanSensors(){
    }

    int sensorsCount();
    int indexOf(byte * addr );
    int setData(byte * addr, int16_t );
    xSensor * getSensor(byte * addr);
    xSensor * getSensor(int);
};

extern MicroLanSensors mlSensors;

#endif /* SENSORS_H */

