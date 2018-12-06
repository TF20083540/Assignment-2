class SpawnGen{
//===========
// Variables
//===========  

  private int wall1 = 550;
  private int wall2 = 1370;

//=============
//= Contructors
//=============

  SpawnGen(){
  }

//============
// Methods ===
//============

  public void display(){
    borders();
  }



  private void borders(){
    fill(150,0,150);
    rect(0,0,getWall1(),1080);
    rect(getWall2(),0,1920,1080);
    rect(0,0,1920,1);//This is only here to create a roof. height is not working at the top.
  }                  //Remove and replace with height when figured out (if figured out....)



  private void spawnBall(){
    for(int i = 0;   i < 1; i++){
      bt.spawnBall(int(random(650,1280)),int(random(300,600)));
    }
  }


//=========
//Setters
//=========





//=========
// Getters
//=========



  public int getWall1(){
    return wall1;
  }

  public int getWall2(){
    return wall2;
  }
}
