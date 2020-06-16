#!/bin/bash
shopt -s extglob
read -p "Enter PINCODE : " pin
if [[ $pin =~ ^([0-9]{6})$ ]]
then
	echo "Valid pincode"
else
	echo "Invalid pincode. Please enter correct PINCODE."
fi
