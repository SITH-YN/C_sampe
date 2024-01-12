### BEGIN CMAKE_TOOLCHAIN_FILE
set(CMAKE_CROSSCOMPILING "TRUE")
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
set(CMAKE_C_COMPILER "C:/Program Files (x86)/Renesas Electronics/CS+/CC/CC-RL/V1.12.01/bin/ccrl.exe")
set(CMAKE_C_COMPILER_ID RLC)
set(CMAKE_C_COMPILER_ID_RUN TRUE)
set(CMAKE_C_COMPILER_FORCED TRUE)
# Specify the CPP compiler
set(CMAKE_CXX_COMPILER "C:/Program Files (x86)/Renesas Electronics/CS+/CC/CC-RL/V1.12.01/bin/ccrl.exe")
set(CMAKE_CXX_COMPILER_ID RLC)
set(CMAKE_CXX_COMPILER_ID_RUN TRUE)
set(CMAKE_CXX_COMPILER_FORCED TRUE)
# Specify the ASM compiler
set(CMAKE_ASM_COMPILER "C:/Program Files (x86)/Renesas Electronics/CS+/CC/CC-RL/V1.12.01/bin/asrl.exe")
set(CMAKE_ASM_COMPILER_ID RLA)
set(CMAKE_ASM_COMPILER_ID_RUN TRUE)
set(CMAKE_ASM_COMPILER_FORCED TRUE)
# Specify the linker
set(CMAKE_LINKER "C:/Program Files (x86)/Renesas Electronics/CS+/CC/CC-RL/V1.12.01/bin/rlink.exe")
# Specify options for command
set(COMMON_OPTIONS "-cpu=S2 -dev=C:/Program Files (x86)/Renesas Electronics/CS+/CC/Device/RL78/Devicefile/DR5F100LE.DVF -g")
set(CMAKE_C_FLAGS "${COMMON_OPTIONS} -lang=c -utf8 -outcode=utf8 -P -preprocess=comment,line -refs_without_declaration")
set(CMAKE_CXX_FLAGS "${COMMON_OPTIONS} -lang=cpp -include=\"../generate\" -define=DEBUG_CONSOLE -utf8 -outcode=utf8 -nomessage -debug -nologo")
set(CMAKE_ASM_FLAGS "${COMMON_OPTIONS} -utf8")
set(CMAKE_EXE_LINKER_FLAGS "-subcommand=../Linker.opt")
# Specify the make
set(CMAKE_MAKE_PROGRAM make)
### END CMAKE_TOOLCHAIN_FILE
