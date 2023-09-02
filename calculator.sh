
#!/bin/bash


#a calculator in shell scripting#take user input
echo  "Welcome to my Calculator Purely created in bash";


#Let  the user specify the operation
echo -e "\nPlease choose the operation you want to perform using this program.\n1.+.\n2.-. \n3.*. \n4./. " 
read operation
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
        *)
          echo -e "\nInvalid Operation."
        ;;
esac
echo -e "\n The result is  $result."


echo -e "\n********************"
echo -e "\nThanks for using my program."
echo -e "\n********************"
