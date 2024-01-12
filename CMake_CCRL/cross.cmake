# Please set your device type
SET(CCRL_DEVICE "R5F100LE")

# Set the environment root directory
# It can be used to specify the target environment location
# e.g compiler's location. This variable is most useful when crosscompiling.
# (Should avoid spaces in the path or have to escape them)
SET(CMAKE_FIND_ROOT_PATH "C:/RENESAS/CC/CC-RL/V1.12.01/")
SET(CMAKE_FIND_BIN_PATH "${CMAKE_FIND_ROOT_PATH}bin/")
SET(CMAKE_FIND_INC_PATH "${CMAKE_FIND_ROOT_PATH}inc/")

if (NOT CMAKE_FIND_ROOT_PATH)
  message(WARNING "Toolchain path not defined.\n"
                  "Builds scripts will search toolchain binaries in environment paths.\n"
                  "Use CMAKE_FIND_ROOT_PATH variable to set a specific toolchain folder.")
elseif (NOT CMAKE_FIND_ROOT_PATH MATCHES "/$")
  set(CMAKE_FIND_ROOT_PATH "${CMAKE_FIND_ROOT_PATH}/")
endif()

if (NOT SUPPORT_FILES_PATH)
  message(SEND_ERROR "Support files path not defined. Please use SUPPORT_FILES_PATH variable to set the support files folder for RL78")
endif()

# CMake variables for compiler, assembler, native build system
# Specify the C compiler
SET(CMAKE_C_COMPILER ${CMAKE_FIND_BIN_PATH}ccrl.exe)
SET(CMAKE_C_COMPILER_ID CCRL)
SET(CMAKE_C_COMPILER_ID_RUN TRUE)
SET(CMAKE_C_COMPILER_FORCED TRUE)
# Specify the CPP compiler
SET(CMAKE_CXX_COMPILER ${CMAKE_FIND_BIN_PATH}ccrl.exe)
SET(CMAKE_CXX_COMPILER_ID CCRL)
SET(CMAKE_CXX_COMPILER_ID_RUN TRUE)
SET(CMAKE_CXX_COMPILER_FORCED TRUE)
# Specify the ASM compiler
SET(CMAKE_ASM_COMPILER ${CMAKE_FIND_BIN_PATH}ccrl.exe)
SET(CMAKE_ASM_COMPILER_ID CCRL)
SET(CMAKE_ASM_COMPILER_ID_RUN TRUE)
SET(CMAKE_ASM_COMPILER_FORCED TRUE)

# Specify the linker
SET(CMAKE_LINKER ${CMAKE_FIND_BIN_PATH}rlink.exe)

# Specify the make

# Specify the Converter
SET(CMAKE_CONVERTER_EXECUTABLE ${CMAKE_FIND_BIN_PATH}rlink.exe)

# Specify device file
SET(CCRL_DEVICE_FILE ${SUPPORT_FILES_PATH}/RL78/COMMON/D${CCRL_DEVICE}.DVF)
FILE(TO_CMAKE_PATH ${CCRL_DEVICE_FILE} CCRL_DEVICE_FILE)
