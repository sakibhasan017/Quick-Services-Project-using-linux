#!/bin/bash

while true; do
    echo "---------------------------------------------------------"
    echo "Functionality of Calculator:"
    echo ""
    echo "1) +       |    2) -       |    3) *       |    4) / "
    echo "5) √       |    6) pow     |    7) log     |    8) !"
    echo "9) %       |    10) sin    |    11) cos    |    12) tan"
    echo "13) Sin-1  |    14) Cos-1  |    15) tan-1  |    16) abs"
    echo "17) Bin    |    18) OCT    |    19) HEX    |    20) Ans"
    echo "0) Exit"
    echo "---------------------------------------------------------"
    echo ""
    echo "You can perform any operation. Just choose which operation you want to perform:"
    read choose

    if (( choose == 0 )); then
        echo "Exiting calculator. Thank You!"
        break
    fi

    if (( choose == 1 || choose == 2 || choose == 3 || choose == 4 || choose == 9 )); then
        echo "Enter First Number: "
        read a
        echo "Enter Second Number: "
        read b

        case $choose in
            1) result=$(echo "$a + $b" | bc) ;;
            2) result=$(echo "$a - $b" | bc) ;;
            3) result=$(echo "$a * $b" | bc) ;;
            4)
                if (( b == 0 )); then
                    echo "Error: Division by zero is not allowed."
                    continue
                else
                    result=$(echo "scale=2; $a / $b" | bc)
                fi
                ;;
            9) result=$(echo "$a % $b" | bc) ;;
        esac

        echo "Result: $result"

    elif (( choose == 7 )); then
        echo "Enter Base (logarithm base): "
        read base
        echo "Enter Number: "
        read num
        result=$(echo "scale=2; l($num)/l($base)" | bc -l)
        echo "Result: $result"

    elif (( choose == 10 )); then
        echo "Enter Number: "
        read num
        result=$(echo "scale=2; s($num)" | bc -l)
        echo "Result: $result"

    elif (( choose == 11 )); then
        echo "Enter Number: "
        read num
        result=$(echo "scale=2; c($num)" | bc -l)
        echo "Result: $result"

    elif (( choose == 12 )); then
        echo "Enter Number: "
        read num
        result=$(echo "scale=2; s($num)/c($num)" | bc -l)
        echo "Result: $result"

    elif (( choose == 13 )); then
        echo "Enter Number: "
        read num
        result=$(echo "scale=5; a($num/sqrt(1-$num^2))" | bc -l)
        echo "Result: $result"

    elif (( choose == 14 )); then
        echo "Enter Number: "
        read num
        result=$(echo "scale=5; 3.14159265359/2-a($num/sqrt(1-$num^2))" | bc -l)
        echo "Result: $result"

    elif (( choose == 15 )); then
        echo "Enter Number: "
        read num
        result=$(echo "scale=2; a($num)" | bc -l)
        echo "Result: $result"

    elif (( choose == 16 )); then
        echo "Enter Number: "
        read num
        result=$(echo "scale=2; if($num < 0) $num * -1 else $num" | bc)
        echo "Result: $result"

    elif (( choose == 5 )); then
        echo "Enter Number: "
        read num
        result=$(echo "scale=2; sqrt($num)" | bc -l)
        echo "Result: $result"

    elif (( choose == 6 )); then
        echo "Enter Base: "
        read base
        echo "Enter Exponent: "
        read exponent
        result=$(echo "$base ^ $exponent" | bc)
        echo "Result: $result"

    elif (( choose == 8 )); then
        echo "Enter Number: "
        read num
        fact=1
        for (( i = 1; i <= num; i++ )); do
            fact=$(( fact * i ))
        done
        result=$fact
        echo "Result: $result"

    elif (( choose == 17 )); then
        echo "Enter Number: "
        read num
        result=$(echo "obase=2; $num" | bc)
        echo "Binary: $result"

    elif (( choose == 18 )); then
        echo "Enter Number: "
        read num
        result=$(echo "obase=8; $num" | bc)
        echo "Octal: $result"

    elif (( choose == 19 )); then
        echo "Enter Number: "
        read num
        result=$(echo "obase=16; $num" | bc)
        echo "Hexadecimal: $result"

    elif (( choose == 20 )); then
        if [ -z "$previous_result" ]; then
            echo "No previous result available."
        else
            echo "Previous Result: $previous_result"
        fi
    else
        echo "Invalid choice! Please try again."
        continue
    fi

    previous_result=$result
done
