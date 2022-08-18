#!/bin/bash

#Defining color codes

success='\033[0;32m'
warning='\033[0;31m'

# Defining password length and input variable


len_password=10

pswd_input=$1

password_conditions () {       

if (( ${#pswd_input} < $len_password )); then
    echo -e "${warning} Please enter a password which is 10 char long"
    exit 1 ;

elif [[ $pswd_input != *[[:digit:]]* ]]; then
    echo -e "${warning} Please enter atleast one digit"
    exit 1;

elif [[ $pswd_input != *[[:lower:]]* ]]; then
    echo -e "${warning} Please enter atleast one lower case letter"
    exit 1;


elif [[ $pswd_input != *[[:upper:]]* ]]; then
    echo -e "${warning} Please enter atleaset one upper case letter"
    exit 1;

fi

}


password_conditions $pswd_input

echo "${success} Your password is validated"

exit 0
 