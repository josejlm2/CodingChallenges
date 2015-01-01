#PROBLEM:
#Given a string write a program to convert it into lowercase. 

#INPUT:
#HELLO CODEEVAL

#OUTPUT:
#hello codeeval

#APPROACH:
#This problem can be solved by using the lowercase function and returning the string


import sys
with open(sys.argv[1], 'r') as input:
    test_cases = input.read().strip().splitlines()
    
for test in test_cases:
    print (test.lower())
