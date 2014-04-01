#pragma once
class die
{
public:
	die(void);
	~die(void);
	
	int number;
	int loaded_number;
	
	int rollLoadedDie(int a);
	int rollDie();
};