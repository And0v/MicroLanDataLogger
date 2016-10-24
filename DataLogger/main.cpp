#include <Arduino.h>
#include <FreeRTOS_AVR.h>
#include <DS2480B.h>
#include <sensors.h>

static void vTaskMicroLanReader(void *pvParameters );
static void vTaskDataSaver(void *pvParameters );

DS2480B ds(&Serial1);




static void vTaskMicroLanReader(void *pvParameters ) {

    byte i;
    byte present = 0;
    byte type_s;
    byte data[12];
    byte addr[8];

    do {
        if (!ds.search(addr)) {
            Serial.println("No more addresses.");
            Serial.println();
            ds.reset_search();
            delay(5000);
            return;
        }

        Serial.print("ROM =");
        for (i = 0; i < 8; i++) {
            Serial.write(' ');
            Serial.print(addr[i], HEX);
        }

        if (DS2480B::crc8(addr, 7) != addr[7]) {
            Serial.println("CRC is not valid!");
            return;
        }
        Serial.println();

        // the first ROM byte indicates which chip
        switch (addr[0]) {
            case 0x10:
                Serial.println("  Chip = DS18S20"); // or old DS1820
                type_s = 1;
                break;
            case 0x28:
                Serial.println("  Chip = DS18B20");
                type_s = 0;
                break;
            case 0x22:
                Serial.println("  Chip = DS1822");
                type_s = 0;
                break;
            default:
                Serial.println("Device is not a DS18x20 family device.");
                return;
        }

        ds.reset();

        delay(100);

        ds.reset();
        ds.select(addr);
        ds.write(0x44); // start conversion

        delay(1000); // maybe 750ms is enough, maybe not
        // we might do a ds.depower() here, but the reset will take care of it.

        present = ds.reset();
        ds.select(addr);
        ds.write(0xBE); // Read Scratchpad

        Serial.print("  Data = ");
        Serial.print(present, HEX);
        Serial.print(" ");
        for (i = 0; i < 9; i++) { // we need 9 bytes
            data[i] = ds.read();
            Serial.print(data[i], HEX);
            Serial.print(" ");
        }
        Serial.print(" CRC=");
        Serial.print(DS2480B::crc8(data, 8), HEX);
        Serial.println();

        // Convert the data to actual temperature
        // because the result is a 16 bit signed integer, it should
        // be stored to an "int16_t" type, which is always 16 bits
        // even when compiled on a 32 bit processor.
        int16_t raw = (data[1] << 8) | data[0];
        if (type_s) {
            raw = raw << 3; // 9 bit resolution default
            if (data[7] == 0x10) {
                // "count remain" gives full 12 bit resolution
                raw = (raw & 0xFFF0) + 12 - data[6];
            }
        } else {
            byte cfg = (data[4] & 0x60);
            // at lower res, the low bits are undefined, so let's zero them
            if (cfg == 0x00) raw = raw & ~7; // 9 bit resolution, 93.75 ms
            else if (cfg == 0x20) raw = raw & ~3; // 10 bit res, 187.5 ms
            else if (cfg == 0x40) raw = raw & ~1; // 11 bit res, 375 ms
            //// default is 12 bit resolution, 750 ms conversion time
        }

        int sensor_index = mlSensors.setData(addr, raw);


        portBASE_TYPE xStatus;
        const TickType_t xTicksToWait = 100 / portTICK_PERIOD_MS;
        xStatus = xQueueSendToBack(xQueueSensors, &sensor_index, xTicksToWait);

        if (xStatus != pdPASS) {
            /* We could not write to the queue because it was full - this must
            be an error as the receiving task should make space in the queue
            as soon as both sending tasks are in the Blocked state. */
            vPrintString("Could not send to the queue.\r\n");
        }

        taskYIELD();
    } while (1);

}

static void vTaskDataSaver(void *pvParameters ){
    
    float celsius;
    celsius = (float) raw / 16.0;
    Serial.print("  Temperature = ");
    Serial.print(celsius);
    Serial.print(" Celsius, ");
    
    
}


void setup(void) {
    // Insure malloc works in tasks
    __malloc_heap_end = (char*) RAMEND;
    Serial.begin(9600);
    Serial1.begin(9600);
    ds.begin();

    xQueueSensors = xQueueCreate(5, sizeof ( int8_t));

    if (xQueueSensors != NULL) {

        /* Create the first task at priority 1.  This time the task parameter is
        not used and is set to NULL.  The task handle is also not used so likewise
        is also set to NULL. */
        xTaskCreate(vTaskMicroLanReader, "MicroLan", 200, NULL, 1, NULL);
        xTaskCreate(vTaskDataSaver, "DataSaver", 200, NULL, 1, NULL);
        /* The task is created at priority 1 ^. */

        /* Start the scheduler so our tasks start executing. */
        vTaskStartScheduler();
    }

    for (;;);
    //  return 0;
}

void loop() {
}

/*
 * 
 */
int main(void) {


    init();
    setup();
    for (;;)loop();

    return 0;
}
