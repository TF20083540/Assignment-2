class Player{
//=========
//Variables
//=========
  private int playerX1 = 905; //Player default X location.
  private int playerY1 = 1068; //Player default Y location.
  private int playerX2 = 110; //Player lenght.
  private int playerY2 = 12; //Player thickness.

//============
//Constructors
//============

  Player(){ //sets up the contructor line.
  }

  Player(int playerX1){ //Player X assigner.
    if(this.playerX1 > sg.getWall1() && this.playerX1 < sg.getWall2() - getplayerSize() ){
    this.playerX1 = playerX1; //if the playerX location would be more than the left wall, AND less than the right wall, then
    } //the we allow the location to be assigned.
    else{ //Buf if those conditions are not met, then no change is allowed.
    }
  }

//=======
//Methods 
//=======

  public void display(){ //Shows whatever it is told to show.
    pPaddle(); //displays the player paddle.
  }

  private void pPaddle(){ //Player paddle icon.
    keyPressed(); //checks if a key is pressed.
    fill(255,165,0); //sets the player color to orange.
    rect(playerX1,playerY1,playerX2,playerY2); //player paddle.
  }

  private void keyPressed(){ //checks if a key is pressed.
    if(keyPressed == true){ //If a key is pressed
      if(key == 'A' || key == 'a'){ //and that key is Upper or Lower A, 
        if(getplayerX() > sg.getWall1()){ //check if the current player X location is more than the left wall
          setplayerX(getplayerX()-3); //and if it is, then push the paddle to the left.
        }
      }
      else if(key == 'D' || key == 'd'){ //If the Upper or Lower D is pressed
        if(getplayerX() + getplayerSize() < sg.getWall2()){ //check if the player X location and the size (right most point) is less than the right wall
          setplayerX(getplayerX()+3); //and if it is, then the paddle is moved to the right.
      }
      }
    }
  }

//=======
//Setters
//=======

  public void setplayerX(int playerX1){ //Player location X setter. 
    if(this.playerX1 >= sg.getWall1() || this.playerX1 <= sg.getWall2() - getplayerSize() ){
      this.playerX1 = playerX1; //If the player X is more than or equal to the left wall OR less than or equal to the right wall
    } //Then we can change the player position.
  }

//=======
//Getters
//=======

  public int getplayerX(){ //Allows getting the player X position.
    return playerX1;
  }

  public int getplayerY(){ //Allows getting the player Y position.
    return playerY1;
  }

  public int getplayerSize(){ //Allows getting the player size.
    return playerX2;
  }

  public int getplayerHeight(){ //Allows getting the player height.
    return playerY2;
  }

}
