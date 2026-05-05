TARGET = lcd_test

CFLAGS += -O3 -g

C_SRCS := $(wildcard ./*.c )

OBJDIR = obj
COMMON_DIR = ../../bsp
GCC_DIR=../../../toolchains/loongarch32r-linux-gnusf-v2.0
PICOLIBC_DIR=../../../toolchains/picolibc

include ../../bsp/common.mk

# Override LINKER_SCRIPT after include (common.mk uses := so it overwrites earlier values)
LINKER_SCRIPT := $(COMMON_DIR)/env/ddr3.lds