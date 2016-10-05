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
	${OBJECTDIR}/main.o


# C Compiler Flags
CFLAGS=-Os -Wl,--gc-sections -mmcu=atmega2560

# CC Compiler Flags
CCFLAGS=-Os -Wl,--gc-sections -mmcu=atmega2560
CXXFLAGS=-Os -Wl,--gc-sections -mmcu=atmega2560

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-L/media/Programs/NetBeansProjects/Android/Arduino_CoreLib/dist/Debug/GNU_AVR-Linux /media/Programs/NetBeansProjects/Android/Arduino_CoreLib/dist/Debug/GNU_AVR-Linux/libarduino_corelib.a

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/blink1

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/blink1: /media/Programs/NetBeansProjects/Android/Arduino_CoreLib/dist/Debug/GNU_AVR-Linux/libarduino_corelib.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/blink1: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	avr-gcc -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/blink1 ${OBJECTFILES} ${LDLIBSOPTIONS} -Os -Wl,--gc-sections -mmcu=atmega2560

${OBJECTDIR}/main.o: main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/variants/mega -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/EEPROM/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/HID/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SoftwareSerial/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SPI/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src -I/media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src/utility -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

# Subprojects
.build-subprojects:
	cd /media/Programs/NetBeansProjects/Android/Arduino_CoreLib && ${MAKE}  -f Makefile CONF=Debug

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/blink1

# Subprojects
.clean-subprojects:
	cd /media/Programs/NetBeansProjects/Android/Arduino_CoreLib && ${MAKE}  -f Makefile CONF=Debug clean

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
