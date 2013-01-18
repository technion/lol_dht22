bin_PROGRAMS = loldht
loldht_SOURCES = dht22.c locking.c
AUTOMAKE_OPTIONS = foreign

noinst_HEADERS = 

distclean-local:
	rm -rf autom4te.cache .deps Makefile.in configure

splint:
	splint dht22.c -warnposix -I/usr/local/include  -I/usr/include/arm-linux-gnueabihf -shiftimplementation
	splint locking.c -warnposix -I/usr/local/include  -I/usr/include/arm-linux-gnueabihf -unrecog
