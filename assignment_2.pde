SpawnGen sg = new SpawnGen();
Balltest bt = new Balltest();
Player pl = new Player();

void setup(){
  fullScreen();

  noStroke();
  frameRate(144);
  import javax.swing.JOptionPane;
  pl.livesCheck();
  sg.spawnBall();
}

void draw(){
  background(0);
  sg.display();
  bt.display();
  pl.display();
  debugMe();
  
}

void debugMe(){                //A purely debugging method. Prints lots of data to the right side of the board.
  fill(0);
  rect(1490, 20, 400, 300);
  fill(255);
  textSize(24);
  text("Debug Data\nPlayer Position\nX: " +sg.getplayerX()+ "\nY:"+sg.getplayerY()+"\nBallX:"+bt.getBallX()+"\nBallY:"+bt.getBallY(), 1500,50);
}
