# Usage:
#       make BASE_DIR=~/git/MakeSystem [BUILD_TYPE=Debug] [VERBOSE=1]

TARGET   := System1
SRCS     :=
INCS     :=
DEFS     :=
SUB_DIRS := Src
LIBS     := Src/Src.a

include $(BASE_DIR)/Build/Config/Build.mk
