class Ball{
//=========
//Variables
//=========
  private int ballX; //Ball X location.
  private int ballY; //Ball Y location.
  private int ballRad = 50; //Ball Radius.
  private boolean ballDirX = true; //Ball X direction. True = left, False = right.
  private boolean ballDirY = true; //Ball Y direction. True = down, False = up.

//============
//Constructors
//============
  Ball(){ //Sets up the constructors.
  }
  
  Ball(int ballX, int ballY){ //Contructor used to verify ball X and Y location. Used exclusively at the time of spawning.
    if((ballX >= sg.getWall1()) && (ballX <= sg.getWall2())){ //If the ballX is more or equal to the left wall, AND less or equal to the right wall, the balls position is allowed to be changed.
      this.ballX = ballX;  //the inbuilt value is assigned to the class integer.
    }
    else{ //If something went wrong, then the ball is defaulted
      ballX = 960; //to the play zone.
    }
    if((ballY >= 300) && (ballY >= 600)){ //If the ball is more or equal to a point, AND equal or less than a point
      this.ballY = ballY; //then the ball is allowed to be assigned a value.
    }
    else{ //However, if something went wrong....
      ballY = 300; //then the ball is defaulted to a set point.
    }
  }
  
  Ball(boolean ballDirX){ //This contructor was actually intended, but is unused, to set a dir from another method. Difficulty was had trying to send a boolean from one method to another, and was bypassed.
    this.ballDirX = ballDirX; //The intent was to set the ball direction left or right. 
  }
  
//=======
//Methods
//=======

  public void display(){ //Shows whatever is is programmed to show.
   ballMove(); //Enables ball moving.
   cDetect(); //Enables collision detection.
  }
  
  private void ballMove(){ //Ball movement.
    fill(255,165,0); //Ball color.
    ellipse(ballX,ballY,ballRad,ballRad); //Creates a ball. X location, Y location, set radion.
    if(ballDirX == true){ //If the ballDirX is true
      setBallX(getBallX()+3); //then the ball is allowed to move right, or positively.
    }
    else{ //If it's false, then the ball
      setBallX(getBallX()-3); //is negatively moved left in the X axis.
    }
    if(ballDirY == true){ //Meanwhile, if the balllDirY is true, then the ball is
      setBallY(getBallY()+3); //moved to downwards positively.
    }
    else{ //However, if it's negative, then the ball
      setBallY(getBallY()-3); //is negatively moved up in the Y axis.
    }
  }
  
private void cDetect(){ //
    if(getBallY() + (getBallRad()/2) >= pl.getplayerY() && getBallX() >= pl.getplayerX() && getBallX() <= pl.getplayerX() + pl.getplayerSize()){
    ballDirY = !ballDirY;
    sc.scoreCount();
    //If the ball's X is between the points of the paddle AND the ball's Y + half the radius of the ball is equal to paddle's Y
    //location, then the ball has its ballDirY direction is changed, and a point is added to the player score.
  } else if(sg.getWall1() >= getBallX() - (getBallRad() /2)|| sg.getWall2() <= (getBallRad() /2) + getBallX()){ 
    ballDirX = !ballDirX;
    sc.scoreCount();
    //If the balls X location + half the balls radius is less than or equal to the left wall OR ballX + half the radius is more or equal to the right wall
    //then the balls X direction is reversed, and a point added to the player score.
  } else if(getBallY() - (getBallRad() /2) <= 1){ //If the ball Y minus half the radius is less than or equal to the top pixel of the screen
    ballDirY = !ballDirY; //then the ball Y direction is reversed and a point is added to the players score.
    sc.scoreCount(); //This is only used because the height option was not working at the top of the screen during development. 
  } else if(getBallY() >= height){ //Detects the bottom of the screen with the balls y location. If the two cross,
    sc.lifeLost(); //then the player loses a life.
  }
  else{ //If something strange happens. Nothing happens.
  }
    
}

//=======
//Setters
//=======
public void spawnBall(int ballX, int ballY){ //sets the ballX and Y location at the start of a new life.
  this.ballX = ballX; //the value being passed is assigned to the true value.
  this.ballY = ballY; //Same.
}

public void setBallX(int ballX){ //Intended for use that was not worked into the final product. Left in for further work.
  this.ballX = ballX; //can take the value for the ball X on its own and assign it.
}

public void setBallY(int ballY){ //Intended for use that was not worked into the final product. Left in for further work.
  this.ballY = ballY; //can take the value for the ballY on its own and assign it.
}

//=======
//getters
//=======
  public int getBallX(){ //allows any class to get the ballX location.
    return ballX;
  }
  
  public int getBallY(){ //allows any class to get the ballY location.
    return ballY;
  }
  
  public int getBallRad(){ //allows any class to get the ball radius.
     return ballRad;
  }
  
}
