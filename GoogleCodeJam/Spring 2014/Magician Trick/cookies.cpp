// reading a text file
#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <stdlib.h>
#include <sstream>
using namespace std;
#include <limits>




void test(int case_num, double answer)
{
    typedef std::numeric_limits< double > dbl;
    cout.precision(dbl::digits10);
    
    cout <<"Case #"<<case_num<<": "<<fixed<<answer<<endl;
}



int main () {
  string line;
  int firstRow = 0;
   int secondRow = 0;
  vector<double> rowsA;  
  ifstream myfile ("input.txt");
  if (myfile.is_open())
  {
    getline(myfile,line);
    int cases =atoi(line.c_str());    
    
    for (int number = 1; number<=cases;number++)
    {
        getline(myfile,line);
        //cout<<line<<endl;
        double numbers = 0;
        std::istringstream iss(line);

        while(iss >> numbers) //Extract integers from line
        {
            rowsA.push_back(numbers);
        }
         for (int j=0; j<rowsA.size();j++)
        {
            //cout<< rowsA.at(j)<<": Row"<<number<<endl;
            
        }
        
        
        double C = rowsA.at(0);
        double F = rowsA.at(1);
        double X = rowsA.at(2);
        
       // cout << "Row: "<<number<< fixed<<"\n C = "<<C<<"\n F = "<< F<<"\n X = "<<X    <<endl;
        
        
        
        double cookies = 0;
        double seconds = 0;
        
        double rate = 2;
        
        
        
        if (C>X)
        {
            seconds = X/rate;
        }
                
        else  
        {
		
		
			int Total_time = 0;
			if (rate*T<rate+F)
			cookies = T*F;
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
            while ((C/rate)>(X/rate))
            {
                cookies = cookies + C;
                
                if (cookies < X)
                {
                   
                    seconds =+ (C/rate);
                    //Buy Farm
                    rate =+ F;
                    cookies= cookies -C;
                }
                cout<<cookies<<endl;
                
            }
            
          
        }
        
        
         
        
       
        
        
        
        
        
        test(number, seconds);
        
        rowsA.clear();
        
    }  
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    
    /*  
    while ( getline (myfile,line) )
    {
      cout << line << '\n';
      
    }*/
    
    
    myfile.close();
  }

  else cout << "Unable to open file"; 

  return 0;
}



