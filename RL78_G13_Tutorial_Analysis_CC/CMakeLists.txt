cmake_minimum_required(VERSION 3.16)

# set the project name
project(CCRL_Project ${PROJECT_NAME})
enable_language(C ASM)

# add the executable
FILE (GLOB_RECURSE SOURCE ${CMAKE_CURRENT_SOURCE_DIR} "*.cpp" "*.c" "*.asm" "*.s" "*.src")
FILE (GLOB_RECURSE src_asm ${CMAKE_CURRENT_SOURCE_DIR} "*.asm" "*.s" "*.src")
foreach(X IN ITEMS ${src_asm})
set_source_files_properties(${X} PROPERTIES LANGUAGE ASM)
endforeach()

include_directories(
    ${CMAKE_FIND_INC_PATH}
    ${CMAKE_CURRENT_SOURCE_DIR}/src
    ${CMAKE_CURRENT_SOURCE_DIR}/generate
)

add_executable(${PROJECT_NAME} ${SOURCE})

# set common option commands
SET(COMMON_OPTIONS "-cpu=S2 -g -dev=${CCRL_DEVICE_FILE}")
# SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${COMMON_OPTIONS} -preprocess=comment,line -P -prep_path=${CMAKE_CURRENT_SOURCE_DIR}/Intermidiate/Preprocess -cref=${CMAKE_CURRENT_SOURCE_DIR}/Intermidiate/Crossreference -pass_source -asmopt=-prn_path=${CMAKE_CURRENT_SOURCE_DIR}/Intermidiate/Assembler -asm_path=${CMAKE_CURRENT_SOURCE_DIR}/Intermidiate/Assembler -refs_without_declaration -Onothing -I${CMAKE_CURRENT_SOURCE_DIR} -I${CMAKE_CURRENT_SOURCE_DIR}/src -I${CMAKE_CURRENT_SOURCE_DIR}/generate -character_set=utf8 -msg_lang=english")
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${COMMON_OPTIONS} -preprocess=comment,line -P -prep_path=${CMAKE_CURRENT_SOURCE_DIR}/Intermidiate/Preprocess -cref=${CMAKE_CURRENT_SOURCE_DIR}/Intermidiate/Crossreference -pass_source -asm_path=${CMAKE_CURRENT_SOURCE_DIR}/Intermidiate/Assembler -refs_without_declaration -Onothing -I${CMAKE_CURRENT_SOURCE_DIR} -I${CMAKE_CURRENT_SOURCE_DIR}/src -I${CMAKE_CURRENT_SOURCE_DIR}/generate -character_set=utf8 -msg_lang=english")
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${COMMON_OPTIONS}")
SET(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} ${COMMON_OPTIONS}")
SET(CMAKE_EXE_LINKER_FLAGS "-output=${CMAKE_PROJECT_NAME}.abs -device=${CCRL_DEVICE_FILE} -debug -list=${CMAKE_PROJECT_NAME}.map -SHow=SYmbol,Reference,Xreference,Total_size,VECTOR,STRUCT,RELOCATION_ATTRIBUTE -AUTO_SECTION_LAYOUT -ROm=.data=.dataR -ROm=.sdata=.sdataR -nooptimize -OCDBG=04 -DEBUG_MONITOR -USER_OPT_BYTE=EFFFE8 -SECURITY_ID=00000000000000000000 -nocompress -memory=high -LIBrary=${CMAKE_FIND_LIB_PATH}rl78cm4s.lib -LIBrary=${CMAKE_FIND_LIB_PATH}malloc_n.lib -LIBrary=${CMAKE_FIND_LIB_PATH}rl78cm4r.lib -message -MSg_unused -STACk -Total_size")
SET(CMAKE_C_LINK_EXECUTABLE "${CMAKE_LINKER} ${CMAKE_EXE_LINKER_FLAGS} <OBJECTS> ")

# Set Output File Type:
SET(Convert_Command -form=stype -REcord=S2 -S9 -Message) #to output .mot file

#specify X converter
SET(CMAKE_COMMAND "${CMAKE_TOOLS_FOLDER}/renesas_cc_converter")
# Set Converter Command
add_custom_command (
 TARGET ${CMAKE_PROJECT_NAME}
 COMMAND ${CMAKE_CONVERTER_EXECUTABLE} ${CMAKE_PROJECT_NAME}.abs
${Convert_Command}
 COMMENT "Converter:"
 VERBATIM
)

# add command for building with X Converter
add_custom_command(TARGET ${CMAKE_PROJECT_NAME}
 COMMAND ${CMAKE_COMMAND} "${CMAKE_PROJECT_NAME}.abs" "${CMAKE_PROJECT_NAME}.x"
 VERBATIM
)



