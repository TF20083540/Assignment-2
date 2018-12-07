SpawnGen sg = new SpawnGen(); //sets up the class SpawnGen. This class will handle spawning objects.
Ball bt = new Ball(); //sets up the class Ball. This lass will handle ball location and collision.
Score sc = new Score(); //set up the class Score. This class will handle how the score is incremented and the scoreboard shown.
Player pl = new Player(); //sets up the class Player. This class will handle how the player moves and its limitations.

  void setup(){ //First setup.
    fullScreen(); //Uses the full screen.
    noStroke();  //No outline
    frameRate(144); //144 fps. Just because I have a 144hz screen.
    import javax.swing.JOptionPane; //Imports Java capability for player input.
    sc.livesCheck(); //Sets up how many lives the player has.
    sg.spawnBall(); //Spawns the ball at a random location.
  }

  void draw(){ //Uses drawing capabilities.
    background(0); //Standard background color. Used universally.
    sg.display(); //Displays whatever the SpawnGen class wishes to display.
    bt.display(); //Displays whatever the Ball class wishes to display.
    sc.display(); //Displays whatever the Score class wishes to display.
    pl.display(); //Displays whatever the Player class wishes to display.
    //debugMe(); //Prints and shows whatever data the debugMe method has been programmed to show. Used for early debugging.
}

  private void debugMe(){  //A purely debugging method. Prints lots of data to the bottom-right side of the board. 
    fill(0);  //Sets color of the debug background.
    rect(1490, 750, 400, 300); //Debug background location.
    fill(255); //Sets color of the debug text.
    textSize(24); //Sets the text size.
    text("Debug Data\nPlayer Position\nX: " +pl.getplayerX()+ "\nY:"+pl.getplayerY()+"\nBallX:"+bt.getBallX()+"\nBallY:"+bt.getBallY(), 1500,775);
      //Prints out the Player X and Y location and the Ball X and Y location.
}
