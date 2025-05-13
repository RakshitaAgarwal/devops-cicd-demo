#!/bin/bash

echo "Enter the first number:"
read num1
echo "Enter the second number:"
read num2

# Displaying the options for arithmetic operations
echo "Select an operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Modulus"

# Reading user choice
read -p "Enter your choice (1-5): " choice

# Perform the operation based on the user's choice
case $choice in
  1)
    result=$((num1 + num2))
    echo "The result of $num1 + $num2 is: $result"
    ;;
  2)
    result=$((num1 - num2))
    echo "The result of $num1 - $num2 is: $result"
    ;;
  3)
    result=$((num1 * num2))
    echo "The result of $num1 * $num2 is: $result"
    ;;
  4)
    # Check for division by zero
    if [ $num2 -eq 0 ]; then
      echo "Error: Division by zero is not allowed!"
    else
      result=$((num1 / num2))
      echo "The result of $num1 / $num2 is: $result"
    fi
    ;;
  5)
    result=$((num1 % num2))
    echo "The result of $num1 % $num2 is: $result"
    ;;
  *)
    echo "Invalid choice. Please select a number between 1 and 5."
    ;;
esac
