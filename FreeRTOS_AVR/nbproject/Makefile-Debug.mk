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
RANLIB=avr-ranlib
CC=avr-gcc
CCC=avr-g++
CXX=avr-g++
FC=gfortran
AS=avr-as
AR=avr-ar

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
	${OBJECTDIR}/_ext/6a54406a/FreeRTOS_AVR.o \
	${OBJECTDIR}/_ext/6a54406a/assertMsg.o \
	${OBJECTDIR}/_ext/6a54406a/basic_io_avr.o \
	${OBJECTDIR}/_ext/6a54406a/idlehook.o \
	${OBJECTDIR}/_ext/61e704c7/croutine.o \
	${OBJECTDIR}/_ext/61e704c7/event_groups.o \
	${OBJECTDIR}/_ext/61e704c7/heap_3.o \
	${OBJECTDIR}/_ext/61e704c7/list.o \
	${OBJECTDIR}/_ext/61e704c7/port.o \
	${OBJECTDIR}/_ext/61e704c7/queue.o \
	${OBJECTDIR}/_ext/61e704c7/tasks.o \
	${OBJECTDIR}/_ext/61e704c7/timers.o


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
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libfreertos_avr.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libfreertos_avr.a: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libfreertos_avr.a
	${AR} -rv ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libfreertos_avr.a ${OBJECTFILES} 
	$(RANLIB) ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libfreertos_avr.a

${OBJECTDIR}/_ext/6a54406a/FreeRTOS_AVR.o: /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/FreeRTOS_AVR.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/6a54406a
	${RM} "$@.d"
	$(COMPILE.c) -g -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/variants/mega -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/EEPROM/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/HID/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SoftwareSerial/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SPI/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src/utility -I/media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src -I/media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility -include /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/FreeRTOS_AVR.h -include /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/basic_io_avr.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6a54406a/FreeRTOS_AVR.o /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/FreeRTOS_AVR.c

${OBJECTDIR}/_ext/6a54406a/assertMsg.o: /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/assertMsg.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6a54406a
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/variants/mega -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/EEPROM/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/HID/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SoftwareSerial/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SPI/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src/utility -include /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/FreeRTOS_AVR.h -include /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/basic_io_avr.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6a54406a/assertMsg.o /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/assertMsg.cpp

${OBJECTDIR}/_ext/6a54406a/basic_io_avr.o: /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/basic_io_avr.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/6a54406a
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/variants/mega -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/EEPROM/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/HID/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SoftwareSerial/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SPI/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src/utility -include /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/FreeRTOS_AVR.h -include /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/basic_io_avr.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6a54406a/basic_io_avr.o /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/basic_io_avr.cpp

${OBJECTDIR}/_ext/6a54406a/idlehook.o: /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/idlehook.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/6a54406a
	${RM} "$@.d"
	$(COMPILE.c) -g -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/variants/mega -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/EEPROM/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/HID/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SoftwareSerial/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SPI/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src/utility -I/media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src -I/media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility -include /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/FreeRTOS_AVR.h -include /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/basic_io_avr.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/6a54406a/idlehook.o /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/idlehook.c

${OBJECTDIR}/_ext/61e704c7/croutine.o: /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility/croutine.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/61e704c7
	${RM} "$@.d"
	$(COMPILE.c) -g -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/variants/mega -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/EEPROM/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/HID/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SoftwareSerial/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SPI/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src/utility -I/media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src -I/media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility -include /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/FreeRTOS_AVR.h -include /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/basic_io_avr.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/61e704c7/croutine.o /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility/croutine.c

${OBJECTDIR}/_ext/61e704c7/event_groups.o: /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility/event_groups.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/61e704c7
	${RM} "$@.d"
	$(COMPILE.c) -g -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/variants/mega -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/EEPROM/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/HID/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SoftwareSerial/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SPI/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src/utility -I/media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src -I/media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility -include /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/FreeRTOS_AVR.h -include /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/basic_io_avr.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/61e704c7/event_groups.o /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility/event_groups.c

${OBJECTDIR}/_ext/61e704c7/heap_3.o: /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility/heap_3.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/61e704c7
	${RM} "$@.d"
	$(COMPILE.c) -g -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/variants/mega -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/EEPROM/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/HID/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SoftwareSerial/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SPI/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src/utility -I/media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src -I/media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility -include /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/FreeRTOS_AVR.h -include /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/basic_io_avr.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/61e704c7/heap_3.o /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility/heap_3.c

${OBJECTDIR}/_ext/61e704c7/list.o: /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility/list.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/61e704c7
	${RM} "$@.d"
	$(COMPILE.c) -g -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/variants/mega -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/EEPROM/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/HID/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SoftwareSerial/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SPI/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src/utility -I/media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src -I/media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility -include /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/FreeRTOS_AVR.h -include /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/basic_io_avr.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/61e704c7/list.o /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility/list.c

${OBJECTDIR}/_ext/61e704c7/port.o: /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility/port.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/61e704c7
	${RM} "$@.d"
	$(COMPILE.c) -g -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/variants/mega -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/EEPROM/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/HID/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SoftwareSerial/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SPI/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src/utility -I/media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src -I/media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility -include /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/FreeRTOS_AVR.h -include /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/basic_io_avr.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/61e704c7/port.o /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility/port.c

${OBJECTDIR}/_ext/61e704c7/queue.o: /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility/queue.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/61e704c7
	${RM} "$@.d"
	$(COMPILE.c) -g -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/variants/mega -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/EEPROM/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/HID/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SoftwareSerial/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SPI/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src/utility -I/media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src -I/media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility -include /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/FreeRTOS_AVR.h -include /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/basic_io_avr.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/61e704c7/queue.o /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility/queue.c

${OBJECTDIR}/_ext/61e704c7/tasks.o: /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility/tasks.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/61e704c7
	${RM} "$@.d"
	$(COMPILE.c) -g -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/variants/mega -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/EEPROM/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/HID/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SoftwareSerial/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SPI/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src/utility -I/media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src -I/media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility -include /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/FreeRTOS_AVR.h -include /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/basic_io_avr.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/61e704c7/tasks.o /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility/tasks.c

${OBJECTDIR}/_ext/61e704c7/timers.o: /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility/timers.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/61e704c7
	${RM} "$@.d"
	$(COMPILE.c) -g -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/variants/mega -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/EEPROM/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/HID/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SoftwareSerial/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SPI/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src/utility -I/media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src -I/media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility -include /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/FreeRTOS_AVR.h -include /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/basic_io_avr.h -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/61e704c7/timers.o /media/Programs/arduino-1.6.11/libraries/FreeRTOS_AVR/src/utility/timers.c

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libfreertos_avr.a

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
