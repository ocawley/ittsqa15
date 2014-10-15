#Test case 1
#Inputs: 45 45
#Expected outcome = Fail
#Actual outcome = Fail
java grades 45 45

#Test case 2
#Inputs >35 100
#Expected outcome = Component Fail
#Actual outcome = Component Fail
java grades 35 100

#Test case 3
#Inputs >100 39
#Expected outcome = Component Fail
#Actual outcome = Component Fail
java grades 100 39

#Test case 4
#Inputs >55 62
#Expected outcome = pass
#Actual outcome = Fail
java grades 55 62

#Test case 5
#Inputs >80 80
#Expected outcome = Pass with distinction
#Actual outcome = Pass 
java grades 80 80

#Test case 6
#Inputs: 110 120
#Expected outcome = Invalid input
#Actual outcome = Invalid input
java grades 110 120

#Test Case 7
#Inputs: b b 
#Expected outcome = Invalid Inputs
java grades b b 
#Actual output = Out of bounds exception ---- This causes the system to crash
