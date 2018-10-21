
boolean sit = false;
boolean dead = false;
float m = 2;
float gravity = 0;
PImage img;

void setup() {
  fullScreen();
  //loadStuffs();
  initPlatforms();
  player = new Player(42, 185, 11, 15);
}

void draw() {  
  background(92, 148, 252);
  viewPoint();
  drawBackground();
  drawPlatforms();
  player.display();
}

void loadStuffs() {
  MarioStand = loadImage("Data/MarioStand.png");
  MarioRun = loadImage("Data/MarioMove.png");
  castle = loadImage("Data/castle.png");
  pipe1 = loadImage("Data/Pipe1.png");
  pipe2 = loadImage("Data/Pipe2.png");
  pipe3 = loadImage("Data/Pipe3.png");
  brick1 = loadImage("Data/brick1.png");
  brick2 = loadImage("Data/brick2.png");
  brick3 = loadImage("Data/brick3.jpg");
  block1 = loadImage("Data/block2.png");
  platform = loadImage("Data/brick4.png");
}

void viewPoint() {
  if (block8.x - player.x < 280) {
    translate(width/1.4-block8.x,300);
  } else if (player.x > width/2) {
    translate(width/2-player.x, 300);
  } else {
    translate(0, 300);
  }
}
