#!/bin/bash

echo "Thanks for using HDFSC services"
echo "Please enter your ATM pin:"
read PIN_NUMBER
echo "re-enter your pin:"
read ATM_PIN
if ($PIN_NUMBER ne $ATM_PIN);
then
  echo "Your pin is incorrect, please try again"
else
  echo "Your pin is correct, proceeding..."
fi
echo "Thank you for using HDFSC services"
