#!/bin/bash
shopt -s extglob
read -p "Enter PINCODE : " pin
checkPinCode()
{
	if [[ $pin =~ ^([a-zA-Z]{1}|[~!@#$%^&*_+-:<>?,./]{1})$ ]]
	then
		echo "Invalid PINCODE"
	elif [[ $pin =~ ^([0-9]{6})$ ]]
	then
		echo "Valid PINCODE."
	else
		echo "Invalid PINCODE."
	fi
}
checkPinCode $pin
