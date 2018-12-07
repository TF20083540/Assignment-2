class SpawnGen{
//===========
//Variables
//===========  

  private int wall1 = 550; //The left walls ending location.
  private int wall2 = 1370; //The right walls starting location.
  
  //Used these as ints instead of directly controlling them, because of the interesting idea of warping the play space. Game
  //difficulty maybe?

//=============
//Contructors
//=============

  SpawnGen(){ //Sets the spawn contructor, however, nothing is manipulated in this class.
  }

//=======
//Methods
//=======

  public void display(){ //Displays..... you know what this does.
    borders();
  }

  private void borders(){ //sets up the color of, and the actual, left wall, right wall, and game roof.
    fill(150,0,150);
    rect(0,0,getWall1(),1080);
    rect(getWall2(),0,1920,1080);
    rect(0,0,1920,1);//This is only here to create a roof. height is not working at the top.
  }                  //Remove and replace with height when figured out (if figured out....)

  private void spawnBall(){ //rolls through and sets a random  starting location.
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

  public int getWall1(){ //gets the left wall ending location.
    return wall1;
  }

  public int getWall2(){ //gets the right wall starting location.
    return wall2;
  }
}
