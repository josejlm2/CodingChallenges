#include <iostream>
#include<string>
#include <fstream>
#include <sstream>
using namespace std;


int main () {
  std::ifstream ifs;

  //ifs.open ("SampleInput.txt", std::ifstream::in);
  ifs.open ("ActualInput.txt", std::ifstream::in);

 std::string line;
  
  getline(ifs, line);

  int northsouth = 0;
  int eastwest = 0;
  bool isNorth= true;
  bool isWest = false;
  bool isSouth = false;
  bool isEast = false;
  
  while (ifs.good()) {
	  
	  if (line.find("Turn") != string::npos){
		  cout<<line<<endl;
		  
		  if (line.find("right") != string::npos){
			  
			  if (isNorth){
				  isNorth = false;
				  isEast = true;
			  }
			  else if (isEast){
				  isEast = false;
				  isSouth = true;
			  }
			  else if (isSouth){
				  isSouth = false;
				  isWest = true;
			  }
			  else if (isWest){
				  isWest = false;
				  isNorth = true;
			  }
		  }

		  if (line.find("left") != string::npos){
			  if (isNorth){
				  isNorth = false;
				  isWest = true;
			  }
			  else if (isEast){
				  isEast = false;
				  isNorth = true;
			  }
			  else if (isSouth){
				  isSouth = false;
				  isEast = true;
			  }
			  else if (isWest){
				  isWest = false;
				  isSouth = true;
			  }
		  }
	  }


	  if (line.find("Move") != string::npos){
		 std::cout<<line<<std::endl;
		//std::cout << line.substr(5,line.size()-5)<<std::endl;
		std::string temp = line.substr(5,line.size()-5);
		int value = atoi(temp.c_str());

		if(isNorth){
			northsouth += value;
		}
		else if (isSouth)
		{
		    northsouth +=  -value;
		}

		else if(isEast)
		{
			eastwest += value;
		}
		else if(isWest)
		{
			eastwest += -value;
		}

		
	  }

	  getline(ifs, line);
}

  

    std::cout<<endl<<eastwest<<", " <<northsouth<<endl;
	ofstream myfile ("output.txt");
	if (myfile.is_open())
	{
		myfile << eastwest;
		myfile << ",";
		myfile << northsouth;
		myfile.close();
  }
  else cout << "Unable to open file";


  ifs.close();
  int a;
  std::cin>>a;

  return 0;
}