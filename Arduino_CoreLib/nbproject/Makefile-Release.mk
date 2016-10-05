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
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/a5fd5abc/CDC.o \
	${OBJECTDIR}/_ext/a5fd5abc/HardwareSerial.o \
	${OBJECTDIR}/_ext/a5fd5abc/HardwareSerial0.o \
	${OBJECTDIR}/_ext/a5fd5abc/HardwareSerial1.o \
	${OBJECTDIR}/_ext/a5fd5abc/HardwareSerial2.o \
	${OBJECTDIR}/_ext/a5fd5abc/HardwareSerial3.o \
	${OBJECTDIR}/_ext/a5fd5abc/IPAddress.o \
	${OBJECTDIR}/_ext/a5fd5abc/PluggableUSB.o \
	${OBJECTDIR}/_ext/a5fd5abc/Print.o \
	${OBJECTDIR}/_ext/a5fd5abc/Stream.o \
	${OBJECTDIR}/_ext/a5fd5abc/Tone.o \
	${OBJECTDIR}/_ext/a5fd5abc/USBCore.o \
	${OBJECTDIR}/_ext/a5fd5abc/WInterrupts.o \
	${OBJECTDIR}/_ext/a5fd5abc/WMath.o \
	${OBJECTDIR}/_ext/a5fd5abc/WString.o \
	${OBJECTDIR}/_ext/a5fd5abc/abi.o \
	${OBJECTDIR}/_ext/a5fd5abc/hooks.o \
	${OBJECTDIR}/_ext/a5fd5abc/main.o \
	${OBJECTDIR}/_ext/a5fd5abc/new.o \
	${OBJECTDIR}/_ext/a5fd5abc/wiring.o \
	${OBJECTDIR}/_ext/a5fd5abc/wiring_analog.o \
	${OBJECTDIR}/_ext/a5fd5abc/wiring_digital.o \
	${OBJECTDIR}/_ext/a5fd5abc/wiring_pulse.o \
	${OBJECTDIR}/_ext/a5fd5abc/wiring_pulse.o \
	${OBJECTDIR}/_ext/a5fd5abc/wiring_shift.o \
	${OBJECTDIR}/_ext/783eed31/HID.o \
	${OBJECTDIR}/_ext/ca5bdada/SPI.o \
	${OBJECTDIR}/_ext/52942ad7/SoftwareSerial.o \
	${OBJECTDIR}/_ext/93f0c0a1/Wire.o \
	${OBJECTDIR}/_ext/41b75dfe/twi.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libarduino_corelib.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libarduino_corelib.a: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libarduino_corelib.a
	${AR} -rv ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libarduino_corelib.a ${OBJECTFILES} 
	$(RANLIB) ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libarduino_corelib.a

${OBJECTDIR}/_ext/a5fd5abc/CDC.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/CDC.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a5fd5abc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a5fd5abc/CDC.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/CDC.cpp

${OBJECTDIR}/_ext/a5fd5abc/HardwareSerial.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/HardwareSerial.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a5fd5abc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a5fd5abc/HardwareSerial.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/HardwareSerial.cpp

${OBJECTDIR}/_ext/a5fd5abc/HardwareSerial0.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/HardwareSerial0.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a5fd5abc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a5fd5abc/HardwareSerial0.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/HardwareSerial0.cpp

${OBJECTDIR}/_ext/a5fd5abc/HardwareSerial1.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/HardwareSerial1.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a5fd5abc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a5fd5abc/HardwareSerial1.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/HardwareSerial1.cpp

${OBJECTDIR}/_ext/a5fd5abc/HardwareSerial2.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/HardwareSerial2.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a5fd5abc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a5fd5abc/HardwareSerial2.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/HardwareSerial2.cpp

${OBJECTDIR}/_ext/a5fd5abc/HardwareSerial3.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/HardwareSerial3.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a5fd5abc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a5fd5abc/HardwareSerial3.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/HardwareSerial3.cpp

${OBJECTDIR}/_ext/a5fd5abc/IPAddress.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/IPAddress.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a5fd5abc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a5fd5abc/IPAddress.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/IPAddress.cpp

${OBJECTDIR}/_ext/a5fd5abc/PluggableUSB.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/PluggableUSB.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a5fd5abc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a5fd5abc/PluggableUSB.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/PluggableUSB.cpp

${OBJECTDIR}/_ext/a5fd5abc/Print.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/Print.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a5fd5abc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a5fd5abc/Print.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/Print.cpp

${OBJECTDIR}/_ext/a5fd5abc/Stream.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/Stream.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a5fd5abc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a5fd5abc/Stream.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/Stream.cpp

${OBJECTDIR}/_ext/a5fd5abc/Tone.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/Tone.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a5fd5abc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a5fd5abc/Tone.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/Tone.cpp

${OBJECTDIR}/_ext/a5fd5abc/USBCore.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/USBCore.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a5fd5abc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a5fd5abc/USBCore.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/USBCore.cpp

${OBJECTDIR}/_ext/a5fd5abc/WInterrupts.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/WInterrupts.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/a5fd5abc
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a5fd5abc/WInterrupts.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/WInterrupts.c

${OBJECTDIR}/_ext/a5fd5abc/WMath.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/WMath.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a5fd5abc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a5fd5abc/WMath.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/WMath.cpp

${OBJECTDIR}/_ext/a5fd5abc/WString.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/WString.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a5fd5abc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a5fd5abc/WString.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/WString.cpp

${OBJECTDIR}/_ext/a5fd5abc/abi.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/abi.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a5fd5abc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a5fd5abc/abi.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/abi.cpp

${OBJECTDIR}/_ext/a5fd5abc/hooks.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/hooks.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/a5fd5abc
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a5fd5abc/hooks.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/hooks.c

${OBJECTDIR}/_ext/a5fd5abc/main.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/main.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a5fd5abc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a5fd5abc/main.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/main.cpp

${OBJECTDIR}/_ext/a5fd5abc/new.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/new.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/a5fd5abc
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a5fd5abc/new.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/new.cpp

${OBJECTDIR}/_ext/a5fd5abc/wiring.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/wiring.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/a5fd5abc
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a5fd5abc/wiring.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/wiring.c

${OBJECTDIR}/_ext/a5fd5abc/wiring_analog.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/wiring_analog.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/a5fd5abc
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a5fd5abc/wiring_analog.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/wiring_analog.c

${OBJECTDIR}/_ext/a5fd5abc/wiring_digital.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/wiring_digital.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/a5fd5abc
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a5fd5abc/wiring_digital.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/wiring_digital.c

${OBJECTDIR}/_ext/a5fd5abc/wiring_pulse.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/wiring_pulse.S 
	${MKDIR} -p ${OBJECTDIR}/_ext/a5fd5abc
	$(AS) $(ASFLAGS) -o ${OBJECTDIR}/_ext/a5fd5abc/wiring_pulse.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/wiring_pulse.S

${OBJECTDIR}/_ext/a5fd5abc/wiring_pulse.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/wiring_pulse.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/a5fd5abc
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a5fd5abc/wiring_pulse.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/wiring_pulse.c

${OBJECTDIR}/_ext/a5fd5abc/wiring_shift.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/wiring_shift.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/a5fd5abc
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/a5fd5abc/wiring_shift.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/cores/arduino/wiring_shift.c

${OBJECTDIR}/_ext/783eed31/HID.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/HID/src/HID.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/783eed31
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/783eed31/HID.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/HID/src/HID.cpp

${OBJECTDIR}/_ext/ca5bdada/SPI.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SPI/src/SPI.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/ca5bdada
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/ca5bdada/SPI.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SPI/src/SPI.cpp

${OBJECTDIR}/_ext/52942ad7/SoftwareSerial.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SoftwareSerial/src/SoftwareSerial.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/52942ad7
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/52942ad7/SoftwareSerial.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/SoftwareSerial/src/SoftwareSerial.cpp

${OBJECTDIR}/_ext/93f0c0a1/Wire.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src/Wire.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/93f0c0a1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/93f0c0a1/Wire.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src/Wire.cpp

${OBJECTDIR}/_ext/41b75dfe/twi.o: /media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src/utility/twi.c 
	${MKDIR} -p ${OBJECTDIR}/_ext/41b75dfe
	${RM} "$@.d"
	$(COMPILE.c) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/41b75dfe/twi.o /media/Programs/arduino-1.6.11/hardware/arduino/avr/libraries/Wire/src/utility/twi.c

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libarduino_corelib.a

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
