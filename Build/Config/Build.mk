# make を実行したディレクトリ
ifeq (,$(START_DIR))
export START_DIR := $(CURDIR)
endif

# Build ディレクトリ
BUILD_DIR := $(BASE_DIR)/Build

# BASE_DIR to CURDIR の部分パス
FROM_BASE := $(patsubst $(BASE_DIR)/%,%,$(CURDIR))

# .o, .a ファイルの出力先ルート
OBJ_ROOT  := $(BUILD_DIR)/Release
ifneq (,$(BUILD_TYPE))
OBJ_ROOT  := $(BUILD_DIR)/$(BUILD_TYPE)
endif

# 生成ファイルの出力先を OBJ_ROOT 配下にする
ifneq ($(START_DIR),$(CURDIR))
TARGET := $(CURDIR)/$(TARGET)
TARGET := $(patsubst $(BASE_DIR)/%,$(OBJ_ROOT)/%,$(TARGET))
endif
ifneq (,$(LIBS))
LIBS   := $(patsubst %,$(CURDIR)/%,$(LIBS))
LIBS   := $(patsubst $(BASE_DIR)/%,$(OBJ_ROOT)/%,$(LIBS))
LIBS   := $(abspath $(LIBS))
endif
ifneq (,$(SRCS))
OBJS   := $(patsubst %,$(CURDIR)/%,$(SRCS:.cpp=.o))
OBJS   := $(patsubst $(BASE_DIR)/%,$(OBJ_ROOT)/%,$(OBJS))
OBJS   := $(abspath $(OBJS))
endif
DEPS   := $(OBJS:.o=.d)

# コンパイルオプション
IFLAGS := $(patsubst %,-I%,$(BASIC_INCS)) $(patsubst %,-I%,$(INCS))
DFLAGS := $(patsubst %,-D%,$(BASIC_DEFS)) $(patsubst %,-D%,$(DEFS))
CFLAGS := -g -Wall $(IFLAGS) $(DFLAGS)

Q := @
ifneq (,$(VERBOSE))
Q :=
endif

.PHONY: all clean info $(SUB_DIRS)

# アーカイブ作成後、中間ファイルを自動的に消さないようにする
.SECONDARY: $(OBJS) $(LIBS)

all: $(SUB_DIRS) $(TARGET)

clean: $(SUB_DIRS)
	$(Q) rm -f $(TARGET) $(OBJS) $(DEPS)

$(SUB_DIRS):
	$(Q) $(MAKE) -C $@ $(MAKECMDGOALS)

$(basename $(TARGET)): $(OBJS)
	$(Q) ld --cref -Map $(@).map -o $@ $^ $(LIBS)

$(basename $(TARGET)).a: $(OBJS)
	$(Q) ar cqT $@ $(OBJS) $(LIBS)

$(OBJ_ROOT)/%.o : $(BASE_DIR)/%.cpp
	$(Q) if [ ! -d $(dir $@) ]; then mkdir -p $(dir $@); fi
	$(Q) g++ $(CFLAGS) -MM -MF $(@:.o=.d) -MP -MT $@ -c -o $@ $<

info:
	@echo ==== SRCS
	@echo $(SRCS)
	@echo ==== OBJS
	@echo $(OBJS)

-include $(DEPS)
