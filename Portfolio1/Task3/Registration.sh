#!/bin/bash

#color.code-snippets
Green="\\033[32m"
Red="\\033[31m"
Yellow="\\033[33m"

echo " Enter Details below to register as a User for this website. "

#Name
read -p " Enter your Full Name: " name
echo " Your Registered Name is $name "

#Date of Birth
read -p " Enter Your date of birth (DD-MM-YYYY): " dob
echo " Your Date of Birth registered is $dob "

#Address
read -p " Enter your Address: " address
echo " Your Registered Address is $address "

#username- Additional Feature
read -p " Enter username for your account: " username
printf "\n"
echo "$username" > username.txt
echo " Your username is saved. " 


#Password -Additional Feature
read -s -p " Enter password for your account: " password
printf "\n"
echo "$password" > password.txt
echo " Your password is secure and saved. " 

#Color
while true;do
    read -p " Choose your color prefernece (Green/Red/Yellow) " color
    if [ "$color" = "Green" ] || [ "$color" = "Red" ] || [ "$color" = "Yellow" ]; then
        echo " You choose color $color "
        break
    else
        echo " The choose color is not valid. Please try again!"
    fi
done

#Output

#Output1 - Green
if [ "$color" = "Green" ]; then
    echo -e "${Green} Name - $name "
    echo -e "${Green} Date of Birth - $dob "
    echo -e "${Green} Address - $address "
    echo -e "${Green} Color - $color "

#Output2 - Red
elif [ "$color" = "Red" ]; then 
    echo -e "${Red} Name - $name "
    echo -e "${Red} Date of Birth - $dob "
    echo -e "${Red} Address - $address " 
    echo -e "${Red} Color - $color "

#Output3 - Yellow
elif [ $color = "Yellow" ]; then 
    echo -e "${Yellow} Name - $name "
    echo -e "${Yellow} Date of Birth - $dob "
    echo -e "${Yellow} Address - $address "
    echo -e "${Yellow} Color - $color "
else 
    echo -e "${Red} Invalid Color, ${Yellow} Please Restart the script. ${Green} Try Again"
fi
exit 0