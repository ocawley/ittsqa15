#!/bin/bash
#This tests a new Garda speed camera
pass=0
fail=0
#Test1
#Inputs: 30 , 30
#Expected Output: EUR 0
output=$(java trafficfine 30 30)
if [[ $output = "EUR 0" ]]; 
then
	echo "Test Case 1 Passed"
	pass=$((pass +1))
else
	echo "Test Case 1 Failed"
	fail=$((fail +1))
fi

#Test2
#Inputs: 40 , 30
#Expected Output: EUR 80
output=$(java trafficfine 40 30)
if [[ $output = "EUR 80" ]] 
then
	echo "Test Case 2 Passed"
	pass=$((pass +1))
else
	echo "Test Case 2 Failed"
	fail=$((fail +1))
fi

#Test3
#Inputs: 75 , 30
#Expected Output: EUR 100
output=$(java trafficfine 75 30)
if [[ $output = "EUR 100" ]] 
then
	echo "Test Case 3 Passed"
	pass=$((pass +1))
else
	echo "Test Case 3 Failed"
	fail=$((fail +1))
fi

#Test4
#Inputs: 110 , 30
#Expected Output: SUSPEND
output=$(java trafficfine 110 30)
if [[ $output = "SUSPEND" ]] 
then
	echo "Test Case 4 Passed"
	pass=$((pass +1))
else
	echo "Test Case 4 Failed, Should display 'SUSPEND' over 100km"
	fail=$((fail +1))

fi

#Test5
#Inputs: 30 , 50
#Expected Output: EUR 0
output=$(java trafficfine 40 30)
if [[ $output = "EUR 0" ]] 
then
	echo "Test Case 5 Passed"
	pass=$((pass +1))
else
	echo "Test Case 5 Failed, should display 'Eur 0' speed is below 50km"
	fail=$((fail +1))
fi

#Test6
#Inputs: 70 , 50
#Expected Output: EUR 0
output=$(java trafficfine 70 50)
if [[ $output = "EUR 100" ]] 
then
	echo "Test Case 6 Passed"
	pass=$((pass +1))
else
	echo "Test Case 6 Failed,should display 'Eur 100',car above 50 but below 80"
	fail=$((fail +1))
fi

#Test7
#Inputs: 90 , 50
#Expected Output: EUR 150
output=$(java trafficfine 90 50)
if [[ $output = "EUR 150" ]] 
then
	echo "Test Case 7 Passed"
	pass=$((pass +1))
else
	echo "Test Case 7 Failed"
	fail=$((fail +1))
fi

#Test8
#Inputs: 125 , 50
#Expected Output: EUR 0
output=$(java trafficfine 125 50)
if [[ $output = "SUSPEND" ]] 
then
	echo "Test Case 8 Passed"
	pass=$((pass +1))
else
	echo "Test Case 8 Failed"
	fail=$((fail +1))
fi

#Test9
#Inputs: 110 , 120
#Expected Output: EUR 0
output=$(java trafficfine 110 120)
if [[ $output = "EUR 0" ]] 
then
	echo "Test Case 9 Passed"
	pass=$((pass +1))
else
	echo "Test Case 9 Failed"
	fail=$((fail +1))
fi

#Test10
#Inputs: 130 , 120
#Expected Output: EUR 0
output=$(java trafficfine 130 120)
if [[ $output = "EUR 250" ]] 
then
	echo "Test Case 10 Passed"
	pass=$((pass +1))
else
	echo "Test Case 10 Failed"
	fail=$((fail +1))
fi

#Test11
#Inputs: 200 , 120
#Expected Output: EUR 0
output=$(java trafficfine 200 120)
if [[ $output = "SUSPEND" ]] 
then
	echo "Test Case 11 Passed"
	pass=$((pass +1))
else
	echo "Test Case 11 Failed, should display'Eur 250' speed excess of 120"
	fail=$((fail +1))
fi

#Test12
#Inputs: 200 , 120
#Expected Output: SUSPEND
output=$(java trafficfine 200 120)
if [[ $output = "SUSPEND" ]] 
then
	echo "Test Case 12 Passed"
	pass=$((pass +1))
else
	echo "Test Case 12 Failed,should display 'SUSPEND',speed excess of 120"
	fail=$((fail +1))
fi

#Test13 
#Inputs:  200, 500 
#Expected Output: Invalid Input
output=$(java trafficfine 200 500)
if [[ $output = "Invalid Input" ]] 
then
	echo "Test Case 13 Passed"
	pass=$((pass +1))
else
	echo "Test Case 13 Failed, speeds inputed are in excess of limits, should display 'Invalid Input"
	fail=$((fail +1))
fi

echo 'pass' $pass
echo 'fail' $fail
