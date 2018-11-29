SpawnGen sg = new SpawnGen();
Balltest bt = new Balltest();

void setup(){
  fullScreen();
//size(1920,1080);
  noStroke();
}

void draw(){
  background(0);
  sg.display();
  bt.display();
  debugMe();
}

void debugMe(){                //A purely debuging method. Prints lots of data to the right side of the board.
  int paddlePosition = sg.pPadX1 + 55;
  fill(0);
  rect(1490, 20, 400, 300);
  fill(255);
  textSize(24);
  text("Debug Data\nPlayer Position: " +paddlePosition+ " (center)\nBall X: Currently Unused\nBall Y: Currently Unused\nControls:\nA = Move Left, D = Move Right", 1500,50);
}
  
