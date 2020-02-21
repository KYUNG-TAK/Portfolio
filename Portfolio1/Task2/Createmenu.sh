#!/bin/bash

#All lists from snippets
Red="\\033[31m"
Green="\\033[32m"
Yellow="\\033[33m"
Blue="\\033[34m"
Purple="\\033[35m"
Cyan="\\033[36m"
DGray="\\033[90m"
Set="\\033[0m"


# Main Menus 
echo "Choose Your option as an argument Eg. Createmenu.sh <1-6>"
printf "\n"
echo "1. Register User"
echo "2. Users Details"
echo "3. Edit User"
echo "4. Save User"
echo "5. Change Password"
echo "6. Print report"
printf "\n"

# If Elif Else Loop 
# When the argument while running scripts matches
if [ "$1" = 1 ]; then 
    echo -e "${DGray}Registering a new User"

elif [ "$1" = 2 ]; then 
    echo -e "${Green}Printing User Details"

elif [ "$1" = 3 ]; then 
    echo -e "${Yellow}Editing an Existing User"

elif [ "$1" = 4 ]; then
    echo -e "${Blue}Saving changes in Existing User/a new User"

elif [ "$1" = 5 ]; then 
    echo -e "${Purple}Changing Password of a User"

elif [ "$1" = 6 ]; then 
    echo -e "${Cyan}Printing Report of a User"

else
    echo -e "${Red}Wrong Input! Please Restart the Script! ${Set} Eg. Createmenu.sh <1-6>"
fi
