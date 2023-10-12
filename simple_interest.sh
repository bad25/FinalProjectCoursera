#!/bin/bash

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3
    
    interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
    
    echo "The simple interest for principal amount $principal at rate $rate% for time $time years is: $interest"
}

# Taking user input
read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest: " rate
read -p "Enter the time in years: " time

# Calling the function with user inputs
calculate_simple_interest $principal $rate $time

#Test
