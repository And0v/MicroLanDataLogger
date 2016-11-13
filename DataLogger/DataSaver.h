/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   DataSaver.h
 * Author: andov
 *
 * Created on 29 октября 2016 г., 13:39
 */

#ifndef DATASAVER_H
#define DATASAVER_H

#include "sensors.h"


class DataSaver {
private:
    SdFat sd;
public:
    int const SD_CS = 53;
    DataSaver();
    DataSaver(const DataSaver& orig);
    virtual ~DataSaver();
    void initSD();
    void saveSensor(xSensor * sensor);
    long getNow();
};

#endif /* DATASAVER_H */

