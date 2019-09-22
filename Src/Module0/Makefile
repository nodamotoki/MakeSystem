# Usage:
#       export BASE_DIR=~/git/MakeSystem
#       make [BUILD_TYPE=Debug] [VERBOSE=1]

include $(BASE_DIR)/Build/Config/Config.mk

TARGET   := Module0.a
SRCS     := Module0.cpp
INCS     := Include
DEFS     :=
SUB_DIRS := Sub00 Sub01
LIBS     := Sub00/Sub00.a Sub01/Sub01.a

include $(BASE_DIR)/Build/Config/Build.mk
