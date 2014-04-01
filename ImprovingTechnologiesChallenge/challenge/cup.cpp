#include "cup.h"


cup::cup(void)
{
}


cup::~cup(void)
{
}


int cup::rollDice(int a)
{
	die tempDice;
	int temp = 0;
	
	for (int i = 0; i<a; i++)
	{
		temp += tempDice.rollDie();	
	}
	return temp;
}
	