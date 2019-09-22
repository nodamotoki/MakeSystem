# Usage:
#       export BASE_DIR=~/git/MakeSystem
#       make [BUILD_TYPE=Debug] [VERBOSE=1]

include $(BASE_DIR)/Build/Config/Config.mk

TARGET   := Module1.a
SRCS     := Module1.cpp
INCS     := Include
DEFS     :=
SUB_DIRS := Sub10 Sub11
LIBS     := Sub10/Sub10.a Sub11/Sub11.a

include $(BASE_DIR)/Build/Config/Build.mk
