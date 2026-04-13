CC      = gcc
CFLAGS  = -Wall -Wextra -g -O2 \
	-Isrc \
	-lprotobuf-c \
	-DLOG_USE_COLOR

SRC = src/*.c \
	  src/proto/*.c
	
BIN = build/charon

.PHONY: all clean dev clean-dev proto

all: $(BIN)

$(BIN): $(SRC)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -f build/*

proto:
	protoc proto/aap2.proto --c_out=./src
