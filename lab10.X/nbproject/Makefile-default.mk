#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/lab10.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/lab10.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../LIS3DH.c ../adc.c ../delay.c ../i2c.c ../spi.c ../tft.c ../tft_font.c ../touch.c ../lab10.c ../dac.c ../servo.c ../pwm.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/LIS3DH.o ${OBJECTDIR}/_ext/1472/adc.o ${OBJECTDIR}/_ext/1472/delay.o ${OBJECTDIR}/_ext/1472/i2c.o ${OBJECTDIR}/_ext/1472/spi.o ${OBJECTDIR}/_ext/1472/tft.o ${OBJECTDIR}/_ext/1472/tft_font.o ${OBJECTDIR}/_ext/1472/touch.o ${OBJECTDIR}/_ext/1472/lab10.o ${OBJECTDIR}/_ext/1472/dac.o ${OBJECTDIR}/_ext/1472/servo.o ${OBJECTDIR}/_ext/1472/pwm.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/LIS3DH.o.d ${OBJECTDIR}/_ext/1472/adc.o.d ${OBJECTDIR}/_ext/1472/delay.o.d ${OBJECTDIR}/_ext/1472/i2c.o.d ${OBJECTDIR}/_ext/1472/spi.o.d ${OBJECTDIR}/_ext/1472/tft.o.d ${OBJECTDIR}/_ext/1472/tft_font.o.d ${OBJECTDIR}/_ext/1472/touch.o.d ${OBJECTDIR}/_ext/1472/lab10.o.d ${OBJECTDIR}/_ext/1472/dac.o.d ${OBJECTDIR}/_ext/1472/servo.o.d ${OBJECTDIR}/_ext/1472/pwm.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/LIS3DH.o ${OBJECTDIR}/_ext/1472/adc.o ${OBJECTDIR}/_ext/1472/delay.o ${OBJECTDIR}/_ext/1472/i2c.o ${OBJECTDIR}/_ext/1472/spi.o ${OBJECTDIR}/_ext/1472/tft.o ${OBJECTDIR}/_ext/1472/tft_font.o ${OBJECTDIR}/_ext/1472/touch.o ${OBJECTDIR}/_ext/1472/lab10.o ${OBJECTDIR}/_ext/1472/dac.o ${OBJECTDIR}/_ext/1472/servo.o ${OBJECTDIR}/_ext/1472/pwm.o

# Source Files
SOURCEFILES=../LIS3DH.c ../adc.c ../delay.c ../i2c.c ../spi.c ../tft.c ../tft_font.c ../touch.c ../lab10.c ../dac.c ../servo.c ../pwm.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/lab10.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX340F512H
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/LIS3DH.o: ../LIS3DH.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/LIS3DH.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LIS3DH.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/LIS3DH.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/LIS3DH.o.d" -o ${OBJECTDIR}/_ext/1472/LIS3DH.o ../LIS3DH.c   
	
${OBJECTDIR}/_ext/1472/adc.o: ../adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/adc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/adc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/adc.o.d" -o ${OBJECTDIR}/_ext/1472/adc.o ../adc.c   
	
${OBJECTDIR}/_ext/1472/delay.o: ../delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/delay.o.d" -o ${OBJECTDIR}/_ext/1472/delay.o ../delay.c   
	
${OBJECTDIR}/_ext/1472/i2c.o: ../i2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/i2c.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/i2c.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/i2c.o.d" -o ${OBJECTDIR}/_ext/1472/i2c.o ../i2c.c   
	
${OBJECTDIR}/_ext/1472/spi.o: ../spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/spi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/spi.o.d" -o ${OBJECTDIR}/_ext/1472/spi.o ../spi.c   
	
${OBJECTDIR}/_ext/1472/tft.o: ../tft.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/tft.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/tft.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/tft.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/tft.o.d" -o ${OBJECTDIR}/_ext/1472/tft.o ../tft.c   
	
${OBJECTDIR}/_ext/1472/tft_font.o: ../tft_font.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/tft_font.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/tft_font.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/tft_font.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/tft_font.o.d" -o ${OBJECTDIR}/_ext/1472/tft_font.o ../tft_font.c   
	
${OBJECTDIR}/_ext/1472/touch.o: ../touch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/touch.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/touch.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/touch.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/touch.o.d" -o ${OBJECTDIR}/_ext/1472/touch.o ../touch.c   
	
${OBJECTDIR}/_ext/1472/lab10.o: ../lab10.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/lab10.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lab10.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/lab10.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/lab10.o.d" -o ${OBJECTDIR}/_ext/1472/lab10.o ../lab10.c   
	
${OBJECTDIR}/_ext/1472/dac.o: ../dac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/dac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/dac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/dac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/dac.o.d" -o ${OBJECTDIR}/_ext/1472/dac.o ../dac.c   
	
${OBJECTDIR}/_ext/1472/servo.o: ../servo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/servo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/servo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/servo.o.d" -o ${OBJECTDIR}/_ext/1472/servo.o ../servo.c   
	
${OBJECTDIR}/_ext/1472/pwm.o: ../pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/pwm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/pwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/pwm.o.d" -o ${OBJECTDIR}/_ext/1472/pwm.o ../pwm.c   
	
else
${OBJECTDIR}/_ext/1472/LIS3DH.o: ../LIS3DH.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/LIS3DH.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LIS3DH.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/LIS3DH.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/LIS3DH.o.d" -o ${OBJECTDIR}/_ext/1472/LIS3DH.o ../LIS3DH.c   
	
${OBJECTDIR}/_ext/1472/adc.o: ../adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/adc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/adc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/adc.o.d" -o ${OBJECTDIR}/_ext/1472/adc.o ../adc.c   
	
${OBJECTDIR}/_ext/1472/delay.o: ../delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/delay.o.d" -o ${OBJECTDIR}/_ext/1472/delay.o ../delay.c   
	
${OBJECTDIR}/_ext/1472/i2c.o: ../i2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/i2c.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/i2c.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/i2c.o.d" -o ${OBJECTDIR}/_ext/1472/i2c.o ../i2c.c   
	
${OBJECTDIR}/_ext/1472/spi.o: ../spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/spi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/spi.o.d" -o ${OBJECTDIR}/_ext/1472/spi.o ../spi.c   
	
${OBJECTDIR}/_ext/1472/tft.o: ../tft.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/tft.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/tft.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/tft.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/tft.o.d" -o ${OBJECTDIR}/_ext/1472/tft.o ../tft.c   
	
${OBJECTDIR}/_ext/1472/tft_font.o: ../tft_font.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/tft_font.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/tft_font.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/tft_font.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/tft_font.o.d" -o ${OBJECTDIR}/_ext/1472/tft_font.o ../tft_font.c   
	
${OBJECTDIR}/_ext/1472/touch.o: ../touch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/touch.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/touch.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/touch.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/touch.o.d" -o ${OBJECTDIR}/_ext/1472/touch.o ../touch.c   
	
${OBJECTDIR}/_ext/1472/lab10.o: ../lab10.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/lab10.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lab10.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/lab10.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/lab10.o.d" -o ${OBJECTDIR}/_ext/1472/lab10.o ../lab10.c   
	
${OBJECTDIR}/_ext/1472/dac.o: ../dac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/dac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/dac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/dac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/dac.o.d" -o ${OBJECTDIR}/_ext/1472/dac.o ../dac.c   
	
${OBJECTDIR}/_ext/1472/servo.o: ../servo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/servo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/servo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/servo.o.d" -o ${OBJECTDIR}/_ext/1472/servo.o ../servo.c   
	
${OBJECTDIR}/_ext/1472/pwm.o: ../pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/pwm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/pwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/pwm.o.d" -o ${OBJECTDIR}/_ext/1472/pwm.o ../pwm.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/lab10.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/lab10.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}           -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/lab10.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/lab10.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/lab10.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
