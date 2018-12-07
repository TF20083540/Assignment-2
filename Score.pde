class Score{
//=========
//Variables
//=========
  private int scoreTable = 0; //sets the highscore array size. Unable to work properly, used as a counter.
  private int hScores[] = new int[11]; //High score array. Shows 10 scores.
  private int score; //current player score.
  private int lives; //current player lives.

//============
//Constructors
//============

  Score(){ //starts the score contructor.
  }
  
  Score(int score){ //Current player score.
    this.score = score;
  }

  
//=======
//Methods
//=======

  public void display(){ //shows whatever is programmed to show.
    showScore(); //calls the current players score.
    showLives(); //calls the current players life count.
    scoreBoard();
  }

  public void livesCheck(){ //sets up the players beginning number of lives.
    lives=Integer.parseInt(JOptionPane.showInputDialog("Enter a difficulty between 0 and 3.", "3"));
  }

  public void scoreCount(){ //If called, give the player 1 point.
    setScore(getScore() +1);
  }

  private void scoreAdd(){ //If there isn't 10 scores to display.
    if(scoreTable < 10){
      scoreTable += 1; //then add a slot to the current number of scores TO display.
      hScores[scoreTable] = score; //the current hscore list is updated by the current score table slow, with the players current score.
      println(hScores[scoreTable]); //print the high score table.
    }
    else{ //If there IS 10 scores to be shown.
      for(int i = 0; i < scoreTable; i++){ //Scroll through the high score array
        if(hScores[i] < score){ //and if the currently highlighted highscore slot is LESS than the current players score.
         hScores[i] = score;  //Then that slot is updated.
         break; //and escape the loop.
      }
        else{ //but if none were found to be replaced, then do nothing.
        }
    }
    }
  }

  private void lifeLost(){ //See the comment block immedietely below this method.
    if(lives > 0){
      JOptionPane.showMessageDialog(null, "You lost a life!");
      lives--;
      pl.setplayerX(905);
      sg.spawnBall();
    }  else if(lives == 0){
        JOptionPane.showMessageDialog(null, "Game Over!");
        scoreAdd();
        int reply = JOptionPane.showConfirmDialog(null, "Would you like to play another game?", "Play Again?", JOptionPane.YES_NO_OPTION);
        if(reply == 0){
          livesCheck();
          score = 0;
          pl.setplayerX(905);
          sg.spawnBall();
        }
        else{
          JOptionPane.showMessageDialog(null, "Thank you for playig! \n Now closing game!");   
          System.exit(0);
        }
    }
  }
  /* If this method is called, and the player has more than zero lives, then tell the player they lost a life, take away a life,
  set the players X location back to the center position, and randomly spawn the ball fresh. However, if the players lives are
  zero at the time of being called, then tell the player that the game is over, add the current score to the high score list,
  ask the player if they wish to play a new game. If they wish to play a new game, then ask how many lives they wish to begin with
  reset the current score to zero, reset the player location to the center, and roll the balls starting location fresh.
  However, if they no longer wish to play, then call a goodbyte message, and close the program.
  */

  private void scoreBoard(){ //If this is called
    textSize(36); //the following text size is set to a large size.
    text("HIGHSCORES",1560,50); //show this text at a set location.
    for(int i = 1; i <= scoreTable; i++){ //roll through the highscore list
      text(hScores[i],1650,60+(i*30)); //and print its contents for viewing, going downwards.
    }
  }

  private void showScore(){ //shows the current players score.
    textSize(36); //sets the following texts size
    text("Score: "+getScore(),350,520); //prints the current players score at a set location.
  }

  private void showLives(){ //shows the current players life counter.
    text("Lives: "+getLives(),350,560);
  }

//=======
//setters
//=======

  public void setScore(int score){ //allows setting the score through the setter and constructor.
    this.score = score;
  }

//=======
//getters
//=======

  public int getScore(){ //allows getting the current players score, currently used for printing.
    return score;
  }

  public int getLives(){ //allows getting the current players lives, currently used for printing.
    return lives;
  }

}
