#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>

#define KB 1024
#define MB (1024 * KB)
#define GB (1024 * MB)

int main(int argc, char **argv)
{
	long size = 100 * MB;
	for (;size > 0;) {
		char *buff = NULL;
		while ((buff = malloc(size)) != NULL) {
			for (long i = 0; i < size; i++) {
				buff[i] = i&255; // Ensure the memory is actually used.
			}
			printf("malloc %ldMB\n", size / MB);
			sleep(1);
		}
		if (buff == NULL) {
			size--;
		}
	}

	printf("this line should not executed!\n");
	return 1;
}
