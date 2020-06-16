#!/bin/bash
shopt -s extglob
read -p "Enter PINCODE : " pin
checkPinCode()
{
	if [[ $pin =~ ^([0-9]{6})$ ]]
        then
                echo "Valid PINCODE."
        else
                echo "Invalid PINCODE."
        fi
}
restrict_beginning()
{
	if [[ $pin =~ ^([a-zA-Z]{1}|[~!@#$%^&*_+-:<>?,./]{1})$ ]]
	then
		echo "Invalid PINCODE"
	else
		checkPinCode $pin
	fi
}
restrict_beginning $pin
