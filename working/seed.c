#include <stdlib.h>
#include <stdio.h>

int main()
{
	int iVar1;
	uint local_1c [2];
	int local_14;
	uint local_10;
		  
	local_14 = open("/dev/urandom",0);
	read(local_14,local_1c,8);
	close(local_14);
	srand(local_1c[0]);
	local_10 = 0;
	while (((int)local_10 < 0x60000000 || (0xf7000000 < local_10))) 
	{
		iVar1 = rand();
		local_10 = iVar1 << 0x10;
	}
	printf("%x\n",local_10);
	return 0;
}
