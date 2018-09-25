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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/bldc_template.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/bldc_template.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED="App Source Files/main.c" "App Source Files/Tick.c" "App Source Files/bldc.c" "App Source Files/initBoard.c" "App Source Files/init_bldc.c" "App Source Files/traps.c"

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED="${OBJECTDIR}/App Source Files/main.o" "${OBJECTDIR}/App Source Files/Tick.o" "${OBJECTDIR}/App Source Files/bldc.o" "${OBJECTDIR}/App Source Files/initBoard.o" "${OBJECTDIR}/App Source Files/init_bldc.o" "${OBJECTDIR}/App Source Files/traps.o"
POSSIBLE_DEPFILES="${OBJECTDIR}/App Source Files/main.o.d" "${OBJECTDIR}/App Source Files/Tick.o.d" "${OBJECTDIR}/App Source Files/bldc.o.d" "${OBJECTDIR}/App Source Files/initBoard.o.d" "${OBJECTDIR}/App Source Files/init_bldc.o.d" "${OBJECTDIR}/App Source Files/traps.o.d"

# Object Files
OBJECTFILES=${OBJECTDIR}/App\ Source\ Files/main.o ${OBJECTDIR}/App\ Source\ Files/Tick.o ${OBJECTDIR}/App\ Source\ Files/bldc.o ${OBJECTDIR}/App\ Source\ Files/initBoard.o ${OBJECTDIR}/App\ Source\ Files/init_bldc.o ${OBJECTDIR}/App\ Source\ Files/traps.o

# Source Files
SOURCEFILES=App Source Files/main.c App Source Files/Tick.c App Source Files/bldc.c App Source Files/initBoard.c App Source Files/init_bldc.c App Source Files/traps.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/bldc_template.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33FJ16MC102
MP_LINKER_FILE_OPTION=,--script=p33FJ16MC102.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/App\ Source\ Files/main.o: App\ Source\ Files/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/App Source Files" 
	@${RM} "${OBJECTDIR}/App Source Files/main.o".d 
	@${RM} "${OBJECTDIR}/App Source Files/main.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "App Source Files/main.c"  -o "${OBJECTDIR}/App Source Files/main.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/App Source Files/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../Motor Control Starter Kit" -I".." -I"../Motor Control Starter Kit/App Source Files" -I"../Motor Control Starter Kit/mTouchCap" -I"." -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/App Source Files/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/App\ Source\ Files/Tick.o: App\ Source\ Files/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/App Source Files" 
	@${RM} "${OBJECTDIR}/App Source Files/Tick.o".d 
	@${RM} "${OBJECTDIR}/App Source Files/Tick.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "App Source Files/Tick.c"  -o "${OBJECTDIR}/App Source Files/Tick.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/App Source Files/Tick.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../Motor Control Starter Kit" -I".." -I"../Motor Control Starter Kit/App Source Files" -I"../Motor Control Starter Kit/mTouchCap" -I"." -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/App Source Files/Tick.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/App\ Source\ Files/bldc.o: App\ Source\ Files/bldc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/App Source Files" 
	@${RM} "${OBJECTDIR}/App Source Files/bldc.o".d 
	@${RM} "${OBJECTDIR}/App Source Files/bldc.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "App Source Files/bldc.c"  -o "${OBJECTDIR}/App Source Files/bldc.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/App Source Files/bldc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../Motor Control Starter Kit" -I".." -I"../Motor Control Starter Kit/App Source Files" -I"../Motor Control Starter Kit/mTouchCap" -I"." -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/App Source Files/bldc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/App\ Source\ Files/initBoard.o: App\ Source\ Files/initBoard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/App Source Files" 
	@${RM} "${OBJECTDIR}/App Source Files/initBoard.o".d 
	@${RM} "${OBJECTDIR}/App Source Files/initBoard.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "App Source Files/initBoard.c"  -o "${OBJECTDIR}/App Source Files/initBoard.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/App Source Files/initBoard.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../Motor Control Starter Kit" -I".." -I"../Motor Control Starter Kit/App Source Files" -I"../Motor Control Starter Kit/mTouchCap" -I"." -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/App Source Files/initBoard.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/App\ Source\ Files/init_bldc.o: App\ Source\ Files/init_bldc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/App Source Files" 
	@${RM} "${OBJECTDIR}/App Source Files/init_bldc.o".d 
	@${RM} "${OBJECTDIR}/App Source Files/init_bldc.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "App Source Files/init_bldc.c"  -o "${OBJECTDIR}/App Source Files/init_bldc.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/App Source Files/init_bldc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../Motor Control Starter Kit" -I".." -I"../Motor Control Starter Kit/App Source Files" -I"../Motor Control Starter Kit/mTouchCap" -I"." -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/App Source Files/init_bldc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/App\ Source\ Files/traps.o: App\ Source\ Files/traps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/App Source Files" 
	@${RM} "${OBJECTDIR}/App Source Files/traps.o".d 
	@${RM} "${OBJECTDIR}/App Source Files/traps.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "App Source Files/traps.c"  -o "${OBJECTDIR}/App Source Files/traps.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/App Source Files/traps.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../Motor Control Starter Kit" -I".." -I"../Motor Control Starter Kit/App Source Files" -I"../Motor Control Starter Kit/mTouchCap" -I"." -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/App Source Files/traps.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/App\ Source\ Files/main.o: App\ Source\ Files/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/App Source Files" 
	@${RM} "${OBJECTDIR}/App Source Files/main.o".d 
	@${RM} "${OBJECTDIR}/App Source Files/main.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "App Source Files/main.c"  -o "${OBJECTDIR}/App Source Files/main.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/App Source Files/main.o.d"        -g -omf=elf -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../Motor Control Starter Kit" -I".." -I"../Motor Control Starter Kit/App Source Files" -I"../Motor Control Starter Kit/mTouchCap" -I"." -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/App Source Files/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/App\ Source\ Files/Tick.o: App\ Source\ Files/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/App Source Files" 
	@${RM} "${OBJECTDIR}/App Source Files/Tick.o".d 
	@${RM} "${OBJECTDIR}/App Source Files/Tick.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "App Source Files/Tick.c"  -o "${OBJECTDIR}/App Source Files/Tick.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/App Source Files/Tick.o.d"        -g -omf=elf -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../Motor Control Starter Kit" -I".." -I"../Motor Control Starter Kit/App Source Files" -I"../Motor Control Starter Kit/mTouchCap" -I"." -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/App Source Files/Tick.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/App\ Source\ Files/bldc.o: App\ Source\ Files/bldc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/App Source Files" 
	@${RM} "${OBJECTDIR}/App Source Files/bldc.o".d 
	@${RM} "${OBJECTDIR}/App Source Files/bldc.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "App Source Files/bldc.c"  -o "${OBJECTDIR}/App Source Files/bldc.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/App Source Files/bldc.o.d"        -g -omf=elf -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../Motor Control Starter Kit" -I".." -I"../Motor Control Starter Kit/App Source Files" -I"../Motor Control Starter Kit/mTouchCap" -I"." -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/App Source Files/bldc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/App\ Source\ Files/initBoard.o: App\ Source\ Files/initBoard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/App Source Files" 
	@${RM} "${OBJECTDIR}/App Source Files/initBoard.o".d 
	@${RM} "${OBJECTDIR}/App Source Files/initBoard.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "App Source Files/initBoard.c"  -o "${OBJECTDIR}/App Source Files/initBoard.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/App Source Files/initBoard.o.d"        -g -omf=elf -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../Motor Control Starter Kit" -I".." -I"../Motor Control Starter Kit/App Source Files" -I"../Motor Control Starter Kit/mTouchCap" -I"." -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/App Source Files/initBoard.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/App\ Source\ Files/init_bldc.o: App\ Source\ Files/init_bldc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/App Source Files" 
	@${RM} "${OBJECTDIR}/App Source Files/init_bldc.o".d 
	@${RM} "${OBJECTDIR}/App Source Files/init_bldc.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "App Source Files/init_bldc.c"  -o "${OBJECTDIR}/App Source Files/init_bldc.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/App Source Files/init_bldc.o.d"        -g -omf=elf -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../Motor Control Starter Kit" -I".." -I"../Motor Control Starter Kit/App Source Files" -I"../Motor Control Starter Kit/mTouchCap" -I"." -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/App Source Files/init_bldc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/App\ Source\ Files/traps.o: App\ Source\ Files/traps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/App Source Files" 
	@${RM} "${OBJECTDIR}/App Source Files/traps.o".d 
	@${RM} "${OBJECTDIR}/App Source Files/traps.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE)  "App Source Files/traps.c"  -o "${OBJECTDIR}/App Source Files/traps.o"  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/App Source Files/traps.o.d"        -g -omf=elf -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"../Motor Control Starter Kit" -I".." -I"../Motor Control Starter Kit/App Source Files" -I"../Motor Control Starter Kit/mTouchCap" -I"." -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/App Source Files/traps.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/bldc_template.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/bldc_template.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--library-path="../Motor Control Starter Kit",--library-path=".",--no-force-link,--smart-io,-Map="${DISTDIR}/simple_MotorControl.X.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/bldc_template.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/bldc_template.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--library-path="../Motor Control Starter Kit",--library-path=".",--no-force-link,--smart-io,-Map="${DISTDIR}/simple_MotorControl.X.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/bldc_template.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
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
