class Balltest{
  private int ballX;
  private int ballY;
  private int ballRad = 50;
  private boolean ballDirX = true;
  private boolean ballDirY = true;

//============
//Constructors
//============
  Balltest(){
  }
  
  Balltest(int ballX, int ballY){
    if((ballX >= sg.getWall1()) && (ballX <= sg.getWall2())){
      this.ballX = ballX;
      println("Error 1: bt 12/15");
    }
    else{
      ballX = 960;
    }
    if((ballY >= 300) && (ballY >= 600)){
      this.ballY = ballY;
      println("Error 2: bt 17/19");
    }
    else{
      ballY = 300;
    }
  }
  
  Balltest(boolean ballDirX){
    this.ballDirX = ballDirX;
  }
  
//=======
//Methods
//=======

  void display(){
   ballMove();
   hitTest();
  }
  
  void ballMove(){
    ellipse(ballX,ballY,ballRad,ballRad);
    if(ballDirX == true){
      setBallX(getBallX()+3);
    }
    else{
      setBallX(getBallX()-3);
    }
    if(ballDirY == true){
      setBallY(getBallY()+3);
    }
    else{
      setBallY(getBallY()-3);
    }
  }
  
void hitTest(){
  
    if(getBallY() + (getBallRad()/2) >= sg.getplayerY() && getBallX() >= sg.getplayerX() && getBallX() <= sg.getplayerX() + sg.getplayerSize()){
    ballDirY = !ballDirY;
    pl.scoreCount();
    println("Error 3 PADDLE");
  } else if(sg.getWall1() >= getBallX() - (getBallRad() /2)|| sg.getWall2() <= (getBallRad() /2) + getBallX()){ 
    ballDirX = !ballDirX;
    pl.scoreCount();
    println("Error 4 WALL");
  } else if(getBallY() - (getBallRad() /2) <= 1){
    ballDirY = !ballDirY;
    pl.scoreCount();
    println("Error 5 TOP");
  } else if(getBallY() >= height){ //Bug #1: bottom of the screen. Dafuq do I do the top?
    pl.lifeLost();
    println("Error 6 BOTTOM");
  }
  else{
  }
    
}

//=======
//Setters
//=======
public void spawnBall(int ballX, int ballY){
  this.ballX = ballX;
  this.ballY = ballY;
}

public void setBallX(int ballX){
  this.ballX = ballX;
}

public void setBallY(int ballY){
  this.ballY = ballY;
}

//=======
//getters
//=======
  public int getBallX(){
    return ballX;
  }
  
  public int getBallY(){
    return ballY;
  }
  
  public int getBallRad(){
     return ballRad; 
  }
  
}
