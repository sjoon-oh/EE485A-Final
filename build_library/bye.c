#include <stdio.h>
#include "bye.h"

int buf[1024] = {1};

void bye_v1(char * str)
{
	printf("bye~~~ %s\n", str);
}
