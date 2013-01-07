
OBJS = dht22.o
CFLAGS = -Wall -I/usr/local/include
LDFLAGS = -lwiringPi

all: loldht

%.o: %.c
	gcc -c $< $(CFLAGS)

loldht: $(OBJS)
	gcc -o loldht $(OBJS) $(LDFLAGS) $(CFLAGS)
clean:
	rm loldht $(OBJS)
splint:
	splint dht22.c -I/usr/local/include -shiftimplementation
