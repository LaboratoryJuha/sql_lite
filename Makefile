CC = gcc
LIB_PATHS = ./sqlite-autoconf-3510100
CFLAGS = -Wall -Wextra -Werror -g3 -I$(LIB_PATHS)
LDLIBS = $(LIB_PATHS)/libsqlite3.a 
LDFLAGS = -lm
TARGET = sql_lite_example
SRCS = sql_lite_example.c
OBJS = $(SRCS:.c=.o)

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@ $(LDLIBS) $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(TARGET) $(OBJS)