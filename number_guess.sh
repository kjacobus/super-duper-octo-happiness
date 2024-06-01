#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

echo -e "\nEnter your username:"
read USERNAME

SECRET_NUM=$(( $RANDOM % 1000 + 1))
#echo -e "\nThe secret number is: $SECRET_NUM"

USER_ID=$($PSQL "SELECT user_id FROM users where username='$USERNAME';")

if [[ -z $USER_ID ]]
then
echo -e "Welcome, $USERNAME! It looks like this is your first time here."
USER_ID_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME');")
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME';")

else
NUM_PREV_GAMES=$($PSQL "SELECT count(*) from games where user_id=$USER_ID;")
BEST_PREV=$($PSQL "SELECT min(num_guesses) from games where user_id=$USER_ID";)
echo -e "Welcome back, $USERNAME! You have played $NUM_PREV_GAMES games, and your best game took $BEST_PREV guesses."

fi
UNGUESSED=true
GUESS_COUNT=0

echo -e "\n Guess the secret number between 1 and 1000:"
read GUESS
((GUESS_COUNT++))

while [[ $UNGUESSED ]]
do
if [[ ! $GUESS =~ ^[0-9]+$ ]]
 then 
  echo "That is not an integer, guess again:"
  read GUESS
  ((GUESS_COUNT++))
 else

  if [[ $GUESS == $SECRET_NUM ]]
  then
   UNGUESSED=false
     #echo "guess: $GUESS, secret: $SECRET_NUM"
     #echo "you have successfully guessed"
     break


  else
 
   if [[ $GUESS -gt $SECRET_NUM ]]
   then
    echo "It's lower than that, guess again:"
    read GUESS
    ((GUESS_COUNT++))
   

   else
    echo "It's higher than that, guess again:"
    read GUESS
    ((GUESS_COUNT++))
   fi
  fi
  fi
done


INSERT_GAME=$($PSQL "INSERT INTO games(user_id,num_guesses,secret_num) VALUES('$USER_ID','$GUESS_COUNT','$SECRET_NUM');")
echo -e "\nYou guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUM. Nice job!"