
#include <Arduino.h>
#include <FreeRTOS_AVR.h>
#include "sensors.h"



MicroLanSensors mlSensors;

int MicroLanSensors::sensorsCount() {
    return SENSORS_COUNT;
}

int MicroLanSensors::indexOf(byte * addr) {
    int idx = 0;
    while (idx < SENSORS_COUNT) {

        int i = 0;
        for (i = 0; i < 8 && (_sensors[idx].id[i] == addr[i]); ++i);
        if (i >= 8) {
            break;
        }
        ++idx;
    }
    if (idx >= SENSORS_COUNT){
        idx = -1;
    }
    return idx;
}

int MicroLanSensors::setData(byte * addr, int16_t data) {
    int idx = indexOf(addr);
    if (idx >= 0){
        _sensors[idx].value = data;
    }
    return idx;
}

xSensor * MicroLanSensors::getSensor(byte * addr) {
    xSensor * rst = NULL;
    int idx = indexOf(addr);
    if (idx >= 0){
        rst = &_sensors[idx];
    }
    return rst;
}
xSensor * MicroLanSensors::getSensor(int idx) {
    xSensor * rst = NULL;
    
    if ((idx >= 0)&&(idx < SENSORS_COUNT)){
        rst = &_sensors[idx];
    }
    return rst;
}