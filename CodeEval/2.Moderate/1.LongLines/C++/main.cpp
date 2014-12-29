#include <iostream>
#include <fstream>
#include <string>
#include <map>
using namespace std;

int main() {
	std::map<int, string> words;
	int maxCount = 0;
	int resultCount = 0;

	string line;
	ifstream myfile("input.txt");
	if (myfile.is_open())
	{
		getline(myfile, line);
		resultCount = std::stoi(line);

		while (getline(myfile, line))
		{
			words.insert({ line.size(), line });
		}
		myfile.close();
	}

	std::map<int, string>::reverse_iterator rit;

	for (rit = words.rbegin(); rit != words.rend(); ++rit){
		if (resultCount != 0){
			std::cout<<rit ->second<<'\n';
			resultCount--;
		}
	}

	cin.get();
	return 0;
}
