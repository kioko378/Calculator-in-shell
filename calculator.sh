<<COMMENT
This script takes userinput to decide on the operation the user wants to  perfom on two integers
and then , it goes to prompt the user for the integers
COMMENT
#!/bin/bash


#a calculator in shell scripting#take user input
echo  "Welcome to my Calculator Purely created in bash";

#initiliaze the counter variable.
i=1
# Start the do-while loop.
while true;do
  #increment the counter variable
  i=$((i+1))

  #Let  the user specify the operation
  echo -e "\nPlease choose the operation you want to perform using this program.\n1.+.\n2.-. \n3.*. \n4./. \n5.%." 
  read operation

  case $operation in
    ''|*[!0-9]*) # Check if it's not a valid number
      echo -e "\nError: Please enter only numeric characters.\n"
      continue
      ;;
    [1-5]) # Check if the userinput  is in the range 1 to 5 (inclusive) 
      break
      ;;
    *)
      echo -e "\nPlease choose from the available operands!"
      ;;
  esac
done #end of loop 
echo -e "\n$operation"
echo -e "\nEnter the two intergers you want to compute using the above operation."

echo -e "\nInteger A:"
read a


echo -e "\nInteger B: " 
read b

#get the result from the user set condition
#use switch  to perform the desired operation

case $operation in
	1)
	  result=$((a+b))
	;;
        2)
          result=$((a-b))
	;;
        3)
          result=$((a*b))
        ;;
        4)
          result=$((a/b))
        ;;
        5)
          result=$((a%b))
        ;;

        *)
          echo -e "\nInvalid Operation."
        ;;
esac
echo -e "\n The result is  $result."


echo -e "\n********************"
echo -e "\nThanks for using my program."
<<<<<<< HEAD
echo -e "\n********************"
=======
echo -e "\n****************"


<<COMMENT
I have created a branch for this script to modify the script so that it accepts  modulo operation

testbranch
COMMENT
>>>>>>> calculator.sh-image
