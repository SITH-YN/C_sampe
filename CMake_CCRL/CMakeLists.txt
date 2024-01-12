cmake_minimum_required(VERSION 3.16)

# set the project name
project(CCRL_Project ${PROJECT_NAME})
enable_language(C ASM)

# add the executable
FILE (GLOB_RECURSE SOURCE ${CMAKE_CURRENT_SOURCE_DIR}
"*.cpp" "*.c" "*.asm" "*.s" "*.src"
)
FILE (GLOB_RECURSE src_asm ${CMAKE_CURRENT_SOURCE_DIR} "*.asm" "*.s" "*.src")
foreach(X IN ITEMS ${src_asm})
set_source_files_properties(${X} PROPERTIES LANGUAGE ASM)
endforeach()

include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}/src
    ${CMAKE_CURRENT_SOURCE_DIR}/generate
)

add_executable(${PROJECT_NAME} ${SOURCE})

# set common option commands
SET(COMMON_OPTIONS "-cpu=S2 -g" )
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${COMMON_OPTIONS} -msg_lang=english")
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${COMMON_OPTIONS} -msg_lang=english")
SET(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} ${COMMON_OPTIONS} -character_set=utf8 -g")
#SET(CMAKE_EXE_LINKER_FLAGS "-output=${CMAKE_PROJECT_NAME}.abs -device=${CCRL_DEVICE_FILE} -debug -list=${CMAKE_PROJECT_NAME}.map -nooptimize -entry=_start -auto_section_layout -security_id=0 -nocompress -memory=high -rom=.data=.dataR,.sdata=.sdataR -nomessage -nologo")
SET(CMAKE_EXE_LINKER_FLAGS "-output=${CMAKE_PROJECT_NAME}.abs -device=${CCRL_DEVICE_FILE} -debug -list=${CMAKE_PROJECT_NAME}.map -nooptimize -auto_section_layout -security_id=0 -nocompress -memory=high -nomessage -nologo")
SET(CMAKE_C_LINK_EXECUTABLE "${CMAKE_LINKER} ${CMAKE_EXE_LINKER_FLAGS} <OBJECTS> ")

# Set Output File Type:
SET(Convert_Command -form=stype) #to output .mot file

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



