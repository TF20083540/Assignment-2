class SpawnGen{
//===========
// Variables
//===========  
private int playerX1 = 905;
private int playerY1 = 1068;
private int playerX2 = 110;
private int playerY2 = 12;
private int wall1 = 550;
private int wall2 = 1370;

//=============
//= Contructors
//=============

SpawnGen(){
}

SpawnGen(int playerX1){
  if(this.playerX1 > getWall1() && this.playerX1 < getWall2() - getplayerSize() ){
  this.playerX1 = playerX1;
  }
  else{
  }
}



//============
// Methods ===
//============

void display(){
  borders();
  pPaddle();
}

void pPaddle(){
  keyPressed();
  fill(255,165,0);
  rect(playerX1,playerY1,playerX2,playerY2);
}

void borders(){
  fill(150,0,150);
  rect(0,0,getWall1(),1080);
  rect(getWall2(),0,1920,1080);
  rect(0,0,1920,1);//This is only here to create a roof. height is not working at the top, and breaking collision with the paddle!
}                  //Remove and replace with height when figured out (if figured out....)

void keyPressed(){
  if(keyPressed == true){
    if(key == 'A' || key == 'a'){
      setplayerX(getplayerX()-3);
      //playerX1--;
    }
    else if(key == 'D' || key == 'd'){
      setplayerX(getplayerX()+3);
      //playerX1++;
    }
  }
}

void spawnBall(){
  for(int i = 0;   i < 1; i++){
  bt.spawnBall(int(random(650,1280)),int(random(300,600)));
  }
}


//=========
//Setters
//=========

public void setplayerX(int playerX1){
  if(this.playerX1 >= getWall1() || this.playerX1 <= getWall2() - getplayerSize() ){
  this.playerX1 = playerX1;
  }
}



//=========
// Getters
//=========

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

public int getWall1(){
  return wall1;
}

public int getWall2(){
  return wall2;
}
}
