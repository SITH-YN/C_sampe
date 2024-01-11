### BEGIN CMAKE_TOOLCHAIN_FILE
# "Generic" is used when cross compiling
set(CMAKE_SYSTEM_NAME Generic)
# Optional, this one not so much
set(CMAKE_SYSTEM_VERSION 1)
# Set the environment root directory
# It can be used to specify the target environment location
# e.g compiler's location. This variable is most useful when cross-compiling.
set(CMAKE_FIND_ROOT_PATH "C:/Program Files (x86)/Renesas Electronics/CS+/CC/CC-RL/V1.12.01/bin")
# CMake variables for compiler, assembler, native build system
# Specify the C compiler
set(CMAKE_C_COMPILER ccrl)
set(CMAKE_C_COMPILER_ID RLC)
set(CMAKE_C_COMPILER_ID_RUN TRUE)
set(CMAKE_C_COMPILER_FORCED TRUE)
# Specify the CPP compiler
set(CMAKE_CXX_COMPILER ccrl)
set(CMAKE_CXX_COMPILER_ID RLC)
set(CMAKE_CXX_COMPILER_ID_RUN TRUE)
set(CMAKE_CXX_COMPILER_FORCED TRUE)
# Specify the ASM compiler
set(CMAKE_ASM_COMPILER asrl)
set(CMAKE_ASM_COMPILER_ID RLA)
set(CMAKE_ASM_COMPILER_ID_RUN TRUE)
set(CMAKE_ASM_COMPILER_FORCED TRUE)
# Specify the linker
set(CMAKE_LINKER rlink)
# Specify options for command
#set(COMMON_OPTIONS "-isa=rxv2 -fpu")
set(CMAKE_C_FLAGS "${COMMON_OPTIONS} -lang=c -include=\"../generate\" -define=DEBUG_CONSO
LE -utf8 -outcode=utf8 -nomessage -debug -nologo")
set(CMAKE_CXX_FLAGS "${COMMON_OPTIONS} -lang=cpp -include=\"../generate\" -define=DEBUG_CO
NSOLE -utf8 -outcode=utf8 -nomessage -debug -nologo")
set(CMAKE_ASM_FLAGS "${COMMON_OPTIONS} -include=\"../generate\" -utf8 -debug -nologo")
set(CMAKE_EXE_LINKER_FLAGS "-subcommand=../Linker.tmp")
# Specify the make
set(CMAKE_MAKE_PROGRAM make)
### END CMAKE_TOOLCHAIN_FILE
