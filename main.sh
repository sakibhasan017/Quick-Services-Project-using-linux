#!/bin/bash

while true; do
    sleep 5
    clear
    echo "We offer the following services for you to choose from:"
    echo "1. Calculator"
    echo "2. RPS Game"
    echo "3. Time and Date"
    echo "4. Server Testing"
    echo "0. Exit"

    read -p "Please choose an option (0-5): " choose

    case $choose in
    1) 
        ./calculator.sh
        ;;
    2) 
        ./RPS_game.sh
        ;;
    3)
        ./time_date.sh
        ;;
    4)
        ./server_testing.sh
        ;;
    0)
        echo "Exiting program."
        break
        ;;
    *)
        echo "Invalid option. Please choose a number between 0 and 5."
        ;;
    esac
done

