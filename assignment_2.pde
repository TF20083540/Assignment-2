SpawnGen sg = new SpawnGen();
Ball bt = new Ball();
Score sc = new Score();
Player pl = new Player();

  void setup(){
    fullScreen();
    noStroke();
    frameRate(144);
    import javax.swing.JOptionPane;
    sc.livesCheck();
    sg.spawnBall();
  }

  void draw(){
    background(0);
    sg.display();
    bt.display();
    sc.display();
    pl.display();
    //debugMe();
}

  private void debugMe(){  //A purely debugging method. Prints lots of data to the bottom-right side of the board. 
    fill(0);
    rect(1490, 750, 400, 300);
    fill(255);
    textSize(24);
    text("Debug Data\nPlayer Position\nX: " +pl.getplayerX()+ "\nY:"+pl.getplayerY()+"\nBallX:"+bt.getBallX()+"\nBallY:"+bt.getBallY(), 1500,775);
  }
