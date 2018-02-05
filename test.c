#include <sys/syscall.h>
#include <unistd.h>
#include <errno.h>
#include <stdio.h>
int main()
{
	int ret;

	ret = syscall(332);
	if (ret)
		fprintf(stderr, "error: %s\n", strerror(errno));
	else
		printf("hypercall succeed!\n");
}
