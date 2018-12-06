class Ball{
//=========
//Variables
//=========
  private int ballX;
  private int ballY;
  private int ballRad = 50;
  private boolean ballDirX = true;
  private boolean ballDirY = true;

//============
//Constructors
//============
  Ball(){
  }
  
  Ball(int ballX, int ballY){
    if((ballX >= sg.getWall1()) && (ballX <= sg.getWall2())){
      this.ballX = ballX;
    }
    else{
      ballX = 960;
    }
    if((ballY >= 300) && (ballY >= 600)){
      this.ballY = ballY;
    }
    else{
      ballY = 300;
    }
  }
  
  Ball(boolean ballDirX){
    this.ballDirX = ballDirX;
  }
  
//=======
//Methods
//=======

  public void display(){
   ballMove();
   cDetect();
  }
  
  private void ballMove(){
    fill(255,165,0);
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
  
private void cDetect(){
  
    if(getBallY() + (getBallRad()/2) >= pl.getplayerY() && getBallX() >= pl.getplayerX() && getBallX() <= pl.getplayerX() + pl.getplayerSize()){
    ballDirY = !ballDirY;
    sc.scoreCount();
    println("Error 3 PADDLE");
  } else if(sg.getWall1() >= getBallX() - (getBallRad() /2)|| sg.getWall2() <= (getBallRad() /2) + getBallX()){ 
    ballDirX = !ballDirX;
    sc.scoreCount();
    println("Error 4 WALL");
  } else if(getBallY() - (getBallRad() /2) <= 1){
    ballDirY = !ballDirY;
    sc.scoreCount();
    println("Error 5 TOP");
  } else if(getBallY() >= height){ //Bug #1: bottom of the screen works. Dafuq do I do the top?
    sc.lifeLost();
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
