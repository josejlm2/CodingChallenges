#include "die.h"
#include <stdlib.h>

die::die(void)
{
}


die::~die(void)
{
}

int die::rollLoadedDie(int a)
{
	int temp = 0;
	
	temp = rand() % 1;

	if (temp)
	{
		number = a;
	}
	else
	{
		//while (number==a)
		//{
			number  = rand() % 6 + 1;
	//	}
	}

	return number;
}

int die::rollDie()
{
	number = rand() % 6 + 1;
	number = rand() % 6 + 1;
	return number;
}
