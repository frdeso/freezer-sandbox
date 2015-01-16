#define _GNU_SOURCE
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <errno.h>

int main(int argc, char **argv)
{
    int sourceFile;
    sourceFile = open("example.txt",O_CREAT | O_DIRECT);
	if (sourceFile == -1) {
		fprintf(stderr, "Value of errno: %d\n", errno);
		return 0;
	}
    close(sourceFile);
    return 0;
}
