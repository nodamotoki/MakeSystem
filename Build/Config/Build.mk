
# The directory on which execute make
ifeq (,$(START_DIR))
START_DIR := $(CURDIR)
endif

# Build directory
BUILD_DIR := $(BASE_DIR)/Build

# Path from BASE_DIR to CURDIR
FROM_BASE := $(patsubst $(BASE_DIR)/%,%,$(CURDIR))

# Root of object directory 
OBJ_ROOT  := $(BUILD_DIR)/Release
ifneq (,$(BUILD_TYPE))
OBJ_ROOT  := $(BUILD_DIR)/$(BUILD_TYPE)
endif

OBJS := $(SRCS.cpp=.o)
OBJS := $(patsubst $(BASE_DIR)/%,$(OBJ_ROOT)/%,$(OBJS))

QUIET := @
ifneq (,$(VERBOSE))
QUIET :=
endif

IFLAGS := $(INCS)
DFLAGS := $(DEFS)

CFLAGS := -g -Wall $(IFLAGS) $(DFLAGS) -c -o


.PHONY all clean $(SUB_DIRS)


all: $(LIBS) $(TARGET)


$(TARGET) : $(LIBS) $(OBJS)


$(LIBS) :


$(OBJ_ROOT)/%.o : $(BASE_DIR)/%.cpp
	$(QUIET) g++ $(CFLAGS) $@ $<

