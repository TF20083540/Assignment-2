class Player{
//=========
//Variables
//=========
  private int playerX1 = 905;
  private int playerY1 = 1068;
  private int playerX2 = 110;
  private int playerY2 = 12;

//============
//Constructors
//============

  Player(){
  }

  Player(int playerX1){
    if(this.playerX1 > sg.getWall1() && this.playerX1 < sg.getWall2() - getplayerSize() ){
    this.playerX1 = playerX1;
    }
    else{
    }
  }

//=======
//Methods 
//=======

  public void display(){
    pPaddle();
  }

  private void pPaddle(){
    keyPressed();
    fill(255,165,0);
    rect(playerX1,playerY1,playerX2,playerY2);
  }

  private void keyPressed(){
    if(keyPressed == true){
      if(key == 'A' || key == 'a'){
        if(getplayerX() > sg.getWall1()){
          setplayerX(getplayerX()-3);
        }
      }
      else if(key == 'D' || key == 'd'){
        if(getplayerX() + getplayerSize() < sg.getWall2()){
          setplayerX(getplayerX()+3);
      }
      }
    }
  }

//=======
//Setters
//=======

  public void setplayerX(int playerX1){
    if(this.playerX1 >= sg.getWall1() || this.playerX1 <= sg.getWall2() - getplayerSize() ){
      this.playerX1 = playerX1;
    }
  }

//=======
//Getters
//=======

  public int getplayerX(){
    return playerX1;
  }

  public int getplayerY(){
    return playerY1;
  }

  public int getplayerSize(){
    return playerX2;
  }

  public int getplayerHeight(){
    return playerY2;
  }

}
