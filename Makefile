CC=g++
CFLAGS=-c -Wall
OBJECTS = src/*.c
all: prog
prog: $(OBJECTS)
        $(CC)$(OBJECTS) -o prog
%.o: %.cpp
        $(CC)$(CFLAGS) $<
clean:
        rm -rf *.o
