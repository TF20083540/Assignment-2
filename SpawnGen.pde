class SpawnGen{
//===========
// Variables
//===========  

int details; //currently unused
public int pPadX1 = 905; //
int pPadY1 = 1068;
int pPadX2 = 110;
int pPadY2 = 12;
  
//============
//= Contructor
//============


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
  rect(pPadX1,pPadY1,pPadX2,pPadY2);
}

void borders(){
  fill(150,0,150);
  rect(0,0,550,1080);
  rect(1370,0,1920,1080);
}

void keyPressed(){
  if(keyPressed == true){
    if(key == 'A' || key == 'a'){
      pPadX1--;
    }
    else if(key == 'D' || key == 'd'){
      pPadX1++;
    }
  }
}
//=========
// Getters
//=========





}
