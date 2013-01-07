
OBJS = dht22.o
CFLAGS = -Wall -I/usr/local/include -fstack-protector -D_FORTIFY_SOURCE=2 -O2
LDFLAGS = -lwiringPi

all: loldht

%.o: %.c
	gcc -c $< $(CFLAGS)

loldht: $(OBJS)
	gcc -o loldht $(OBJS) $(LDFLAGS) $(CFLAGS)
clean:
	rm loldht $(OBJS)
splint:
	splint dht22.c -warnposix -I/usr/local/include  -I/usr/include/arm-linux-gnueabihf -shiftimplementation
