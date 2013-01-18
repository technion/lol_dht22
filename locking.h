/*
 *      locking.c:
 *      Prevents rapid use of application by implementing a file lock
 *      technion@lolware.net
 */

#define LOCKFILE "/var/run/dht.lock"

int open_lockfile(const char *filename);
void close_lockfile(int fd);

