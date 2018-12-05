class Player{

int scoreTable = 0;
int hScores[] = new int[11];
int score;
int lives;

//============
//Constructors
//============

  Player(){
  }
  
  Player(int score){
    this.score = score;
}

  
//=======
//Methods
//=======

void display(){
  text("Lives: "+lives, 300,300); //debug code
  text("Score: "+score, 300,200);
  scoreBoard();
}

void livesCheck(){
  lives=Integer.parseInt(JOptionPane.showInputDialog("Enter a difficulty between 0 and 3.", "3"));
}

void scoreCount(){
  setScore(getScore() +1);
}

void scoreAdd(){
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

void lifeLost(){
  if(lives > 0){
  JOptionPane.showMessageDialog(null, "You lost a life!");
  lives--;
  sg.setplayerX(905);
  sg.spawnBall();
  } else if(lives == 0){
      JOptionPane.showMessageDialog(null, "Game Over!");
      scoreAdd();
      int reply = JOptionPane.showConfirmDialog(null, "Would you like to play another game?", "Play Again?", JOptionPane.YES_NO_OPTION);
      if(reply == 0){
        livesCheck();
        score = 0;
        sg.setplayerX(905);
        sg.spawnBall();
    
      }
      else{
        JOptionPane.showMessageDialog(null, "Thank you for playig! \n Now closing game!");   
        System.exit(0);
      }
    }
}

void scoreBoard(){
  textSize(24);
  text("HIGHSCORES",100,400);
  for(int i = 1; i <= scoreTable; i++){
    text(hScores[i],100,400+(i*25));
  }
}

//=======
//setters
//=======

private void setScore(int score){
  this.score = score;
}


//=======
//getters
//=======

private int getScore(){
  return score;
}


}
