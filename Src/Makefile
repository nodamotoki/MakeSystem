# Usage:
#       export BASE_DIR=~/git/MakeSystem
#       make [BUILD_TYPE=Debug] [VERBOSE=1]

include $(BASE_DIR)/Build/Config/Config.mk

TARGET   := Src.a
SRCS     :=
INCS     :=
DEFS     :=
SUB_DIRS := Core Module0 Module1
LIBS     := Core/Main.a Module0/Module0.a Module1/Module1.a

include $(BASE_DIR)/Build/Config/Build.mk
