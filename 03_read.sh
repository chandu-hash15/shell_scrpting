#!/bin/bash

echo "Thanks for using HDFSC services"
echo "Please enter your ATM pin:"
read -s PIN_NUMBER
echo "re-enter your pin:"
read -s ATM_PIN
if [[ "$PIN_NUMBER" == "$ATM_PIN" ]];
then
  echo "Your pin is correct proceeding..."
else
  echo "Your pin is incorrect, please try again"
fi
echo "Thank you for using HDFSC services"
