#!/bin/bash

echo ""
echo "----------------------------------------------------------------------"
echo ""
get_computer_choice() {
  choices=("rock" "paper" "scissors")
  index=$((RANDOM % 3))
  echo "${choices[$index]}"
}

get_winner() {
  if [[ $1 == $2 ]]; then
    echo "It's a tie!"
  elif [[ ($1 == "rock" && $2 == "scissors") || 
          ($1 == "scissors" && $2 == "paper") || 
          ($1 == "paper" && $2 == "rock") ]]; then
    echo "You win!"
  else
    echo "Computer wins!"
  fi
}

player_score=0
computer_score=0
rounds=5

for (( round=1; round<=rounds; round++ ))
do
  echo -e "\nRound $round"

  read -p "Choose rock, paper, or scissors: " player_choice

  if [[ ! "rock paper scissors" =~ $player_choice ]]; then
    echo "Invalid input. Please choose rock, paper, or scissors."
    continue
  fi

  computer_choice=$(get_computer_choice)
  echo "Computer chose: $computer_choice"

  result=$(get_winner $player_choice $computer_choice)
  echo $result

  if [[ $result == "You win!" ]]; then
    ((player_score++))
  elif [[ $result == "Computer wins!" ]]; then
    ((computer_score++))
  fi

  echo "Current score - You: $player_score, Computer: $computer_score"
done

echo -e "\nGame Over!"
if [[ $player_score -gt $computer_score ]]; then
  echo "You win the game with a score of $player_score to $computer_score!"
elif [[ $player_score -lt $computer_score ]]; then
  echo "Computer wins the game with a score of $computer_score to $player_score!"
else
  echo "It's a tie! You both scored $player_score."
fi

echo ""
echo "---------------------------------------------------------------------------------"
echo ""
