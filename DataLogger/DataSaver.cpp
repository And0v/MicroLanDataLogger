
#include <Arduino.h>
#include <SPI.h>
#include <SdFat.h>
#include "DataSaver.h"
#include "DS2480B.h"
#include "sensors.h"
//#include "DateTime.h"

DataSaver::DataSaver() {
}

DataSaver::DataSaver(const DataSaver& orig) {
}

DataSaver::~DataSaver() {
}

void DataSaver::initSD() {
    if (!sd.begin(SD_CS)) {
        sd.initErrorPrint("sd init error");
    }

}

void DataSaver::saveSensor(xSensor * sensor) {
    char * idStr;
    for (int i = 0; i < 8; ++i) {
        sprintf(idStr, "%s%x", idStr, sensor->id[i]);
    }
    if (!sd.exists(idStr)) {
        if (!sd.mkdir(idStr)) {
            sd.errorHalt("cannot create folder for sensor ");
        }
    }
    if (!sd.chdir()) {
        sd.errorHalt("cannot open folder for sensor ");
    }

    SdFile dataFile;

    if (!dataFile.open(&sd, (const char*) "data.csv", O_RDWR | O_CREAT)) {
        sd.errorHalt("Cannot create/open datafile for sensor");
    }

    dataFile.seekEnd();

    if (dataFile.curPosition() == 0) {
        dataFile.write("DateTime;Value");
    }
    dataFile.write(getNow());
    dataFile.write(";");
    dataFile.write((float)sensor->value/16.0);
}

long DataSaver::getNow() {
    return rtc.now();
}

