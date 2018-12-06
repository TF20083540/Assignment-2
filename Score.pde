class Score{
//=========
//Variables
//=========
  private int scoreTable = 0;
  private int hScores[] = new int[11];
  private int score;
  private int lives;

//============
//Constructors
//============

  Score(){
  }
  
  Score(int score){
    this.score = score;
  }

  
//=======
//Methods
//=======

  public void display(){
    showScore();
    showLives();
    scoreBoard();
  }

  public void livesCheck(){
    lives=Integer.parseInt(JOptionPane.showInputDialog("Enter a difficulty between 0 and 3.", "3"));
  }

  public void scoreCount(){
    setScore(getScore() +1);
  }

  private void scoreAdd(){
    if(scoreTable < 10){
      scoreTable += 1;
      hScores[scoreTable] = score;
      println(hScores[scoreTable]);
    }
    else{
      for(int i = 0; i < scoreTable; i++){
        if(hScores[i] < score){
         hScores[i] = score; 
         break;
      }
        else{
        }
    }
    }
  }

  private void lifeLost(){
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

  private void scoreBoard(){
    textSize(36);
    text("HIGHSCORES",1560,50);
    for(int i = 1; i <= scoreTable; i++){
      text(hScores[i],1650,60+(i*30));
    }
  }

  private void showScore(){
    textSize(36);
    text("Score: "+getScore(),350,520);
  }

  private void showLives(){
    text("Lives: "+getLives(),350,560);
  }

//=======
//setters
//=======

  public void setScore(int score){
    this.score = score;
  }

//=======
//getters
//=======

  public int getScore(){
    return score;
  }

  public int getLives(){
    return lives;
  }

}
