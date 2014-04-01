#include <iostream>
#include<string>
#include <fstream>
#include <sstream>
#include "die.h"
#include "cup.h"

using namespace std;


int main () {
	
	die lucky_die;
	cup lucky_cup;
	//cout<<lucky_die.roll();

	cout << "TRIAL "<< 1 << endl;

	cout << "Rolling " << 1 << " die: "<< lucky_die.rollDie() << endl;
	cout << "Rolling " << 2 << " dice in a cup: "<< lucky_cup.rollDice(2)<< endl;
	cout << "Rolling " << 6 << " dice in a cup: "<< lucky_cup.rollDice(6) << endl;
	cout << "Rolling " << 12 << " dice in a cup: "<< lucky_cup.rollDice(12) << endl;
	cout << "Rolling " << 120 << " dice in a cup: "<< lucky_cup.rollDice(120) << endl;
	cout << "Rolling a loaded die set to '" << 1 << "': "<< lucky_die.rollLoadedDie(1)<< endl;
	cout << "Rolling a loaded die set to '" << 1 << "': "<< lucky_die.rollLoadedDie(1)<< endl;
	
	cout << endl<< "TRIAL "<< 2 << endl;

	cout << "Rolling " << 1 << " die: "<< lucky_die.rollDie() << endl;
	cout << "Rolling " << 2 << " dice in a cup: "<< lucky_cup.rollDice(2)<< endl;
	cout << "Rolling " << 6 << " dice in a cup: "<< lucky_cup.rollDice(6) << endl;
	cout << "Rolling " << 12 << " dice in a cup: "<< lucky_cup.rollDice(12) << endl;
	cout << "Rolling " << 120 << " dice in a cup: "<< lucky_cup.rollDice(120) << endl;
	cout << "Rolling a loaded die set to '" << 1 << "': "<< lucky_die.rollLoadedDie(1)<< endl;
	cout << "Rolling a loaded die set to '" << 1 << "': "<< lucky_die.rollLoadedDie(1)<< endl;


	int a;
	std::cin>>a;
	return 0;
}