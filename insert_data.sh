#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE teams, games")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $WINNER != "winner" ]]
  then
    # get winner_id
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    # if not found
    if [[ -z $WINNER_ID ]]
    then
      # insert major
      INSERT_WINNER_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $INSERT_WINNER_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into teams, $WINNER
      fi
      # get new team_id
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    fi
    # get opponent_id
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    # if not found
    if [[ -z $OPPONENT_ID ]]
    then
      # insert opponent
      INSERT_OPPONENT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ $INSERT_OPPONENT_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into teams, $OPPONENT
      fi
      # get new course_id
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    fi
    GAMES_ID=$($PSQL "SELECT game_id FROM games WHERE winner_id='$WINNER_ID' AND opponent_id='$OPPONENT_ID'")
    if [[ -z $GAMES_ID ]]
    then
      # insert games
      INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year,round,winner_goals,winner_id,opponent_id,opponent_goals) VALUES ('$YEAR','$ROUND', '$WINNER_GOALS', '$WINNER_ID', '$OPPONENT_ID', '$OPPONENT_GOALS')")
      if [[ $INSERT_GAMES_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into games, $WINNER $OPPONENT
      fi
    fi 
  fi 
done



