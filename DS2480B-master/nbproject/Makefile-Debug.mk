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
	${OBJECTDIR}/_ext/163d383b/DS2480B.o


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
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libds2480b-master.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libds2480b-master.a: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libds2480b-master.a
	${AR} -rv ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libds2480b-master.a ${OBJECTFILES} 
	$(RANLIB) ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libds2480b-master.a

${OBJECTDIR}/_ext/163d383b/DS2480B.o: /media/Programs/arduino-1.6.11/libraries/DS2480B-master/DS2480B.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/163d383b
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/variants/mega -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/EEPROM/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/HID/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SoftwareSerial/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SPI/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src/utility -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/163d383b/DS2480B.o /media/Programs/arduino-1.6.11/libraries/DS2480B-master/DS2480B.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libds2480b-master.a

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
