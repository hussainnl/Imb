#!/bin/bash

# Simple Interest Calculator

# Function to calculate simple interest
calculate_interest() {
    local principal=$1
    local rate=$2
    local time=$3

    local interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
    echo "Simple Interest: \$${interest}"
}

# Read input values
read -p "Enter principal amount: " principal
read -p "Enter annual interest rate (in %): " rate
read -p "Enter time (in years): " time

# Calculate and display interest
calculate_interest $principal $rate $time
