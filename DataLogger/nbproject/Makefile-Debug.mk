#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=avr-gcc
CCC=avr-g++
CXX=avr-g++
FC=gfortran
AS=avr-as

# Macros
CND_PLATFORM=GNU_AVR-Linux
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/630fbc91/sensors.o \
	${OBJECTDIR}/main.o


# C Compiler Flags
CFLAGS=-Os -Wall -ffunction-sections -fdata-sections -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=169

# CC Compiler Flags
CCFLAGS=-Os -Wall -ffunction-sections -fdata-sections -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=169
CXXFLAGS=-Os -Wall -ffunction-sections -fdata-sections -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=169

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=/media/Programs/NetBeansProjects/MicroLanDataLogger/Arduino_CoreLib/dist/Debug/GNU_AVR-Linux/libarduino_corelib.a /media/Programs/NetBeansProjects/MicroLanDataLogger/DS2480B-master/dist/Debug/GNU_AVR-Linux/libds2480b-master.a /media/Programs/NetBeansProjects/MicroLanDataLogger/FreeRTOS_AVR/dist/Debug/GNU_AVR-Linux/libfreertos_avr.a

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/datalogger

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/datalogger: /media/Programs/NetBeansProjects/MicroLanDataLogger/Arduino_CoreLib/dist/Debug/GNU_AVR-Linux/libarduino_corelib.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/datalogger: /media/Programs/NetBeansProjects/MicroLanDataLogger/DS2480B-master/dist/Debug/GNU_AVR-Linux/libds2480b-master.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/datalogger: /media/Programs/NetBeansProjects/MicroLanDataLogger/FreeRTOS_AVR/dist/Debug/GNU_AVR-Linux/libfreertos_avr.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/datalogger: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	avr-gcc -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/datalogger ${OBJECTFILES} ${LDLIBSOPTIONS} -Os -Wl,--gc-sections -mmcu=atmega2560

${OBJECTDIR}/_ext/630fbc91/sensors.o: /media/Programs/NetBeansProjects/MicroLanDataLogger/DataLogger/sensors.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/630fbc91
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/variants/mega -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/EEPROM/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/HID/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SoftwareSerial/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SPI/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src/utility -I/media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src -I/media/Programs/arduino-1.6.11/libraries/DS2480B-master -I./ -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/630fbc91/sensors.o /media/Programs/NetBeansProjects/MicroLanDataLogger/DataLogger/sensors.cpp

${OBJECTDIR}/main.o: main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/variants/mega -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/EEPROM/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/HID/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SoftwareSerial/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SPI/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src/utility -I/media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src -I/media/Programs/arduino-1.6.11/libraries/DS2480B-master -I./ -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

# Subprojects
.build-subprojects:
	cd /media/Programs/NetBeansProjects/MicroLanDataLogger/Arduino_CoreLib && ${MAKE}  -f Makefile CONF=Debug
	cd /media/Programs/NetBeansProjects/MicroLanDataLogger/DS2480B-master && ${MAKE}  -f Makefile CONF=Debug
	cd /media/Programs/NetBeansProjects/MicroLanDataLogger/FreeRTOS_AVR && ${MAKE}  -f Makefile CONF=Debug

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/datalogger

# Subprojects
.clean-subprojects:
	cd /media/Programs/NetBeansProjects/MicroLanDataLogger/Arduino_CoreLib && ${MAKE}  -f Makefile CONF=Debug clean
	cd /media/Programs/NetBeansProjects/MicroLanDataLogger/DS2480B-master && ${MAKE}  -f Makefile CONF=Debug clean
	cd /media/Programs/NetBeansProjects/MicroLanDataLogger/FreeRTOS_AVR && ${MAKE}  -f Makefile CONF=Debug clean

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
