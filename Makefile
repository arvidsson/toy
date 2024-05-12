CC = gcc
CFLAGS = -Wall -Wextra -std=c11
BIN_DIR = bin
SRCS := $(wildcard src/*.c)
OBJS := $(patsubst %.c,$(BIN_DIR)/%.o,$(SRCS))
TARGET = toy

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $^ -o $(BIN_DIR)/$@

$(BIN_DIR)/%.o: %.c | $(BIN_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

clean:
	rm -rf $(BIN_DIR)

run:
	@$(BIN_DIR)/$(TARGET)

.PHONY: all clean run
