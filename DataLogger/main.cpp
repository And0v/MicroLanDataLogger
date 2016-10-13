
#include "DataLogger.ino"

/*
 * 
 */
int main(void) {


    init();
    setup();
    for (;;)loop();

    return 0;
}
