all: loldht

loldht: dht22.c
	gcc -o loldht dht22.c -lwiringPi -Wall
clean:
	rm loldht
