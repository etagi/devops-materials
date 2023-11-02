#!/bin/bash

echo "Enter three numbers: "
read num1 num2 num3

max=$num1

if (( $(echo "$num2 > $max" | bc -l) )); then
  max=$num2
fi

if (( $(echo "$num3 > $max" | bc -l) )); then
  max=$num3
fi

echo "The largest number is: $max"

