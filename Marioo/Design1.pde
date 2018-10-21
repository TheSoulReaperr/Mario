Obstacle platform1;
Obstacle platform2;
Obstacle platform3;
Obstacle platform4;
Obstacle Pipe1;
Obstacle Pipe2;
Obstacle Pipe3;
Obstacle Pipe4;
Obstacle Pipe5;
Obstacle Pipe6;

PImage pipe1;
PImage pipe2;
PImage pipe3;
PImage platform;

void initPlatforms() {
  platform1 = new Obstacle(0,200,1104,24,color(200,76,12),platform);
  platform2 = new Obstacle(1136,200,239,24,color(200,76,12),platform);
  platform3 = new Obstacle(1424,200,1023,24,color(200,76,12),platform);
  platform4 = new Obstacle(2480,200,904,24,color(200,76,12),platform);
  Pipe1 = new Obstacle(450,168,27,32,color(128,208,16),pipe1);
  Pipe2 = new Obstacle(610,152,27,48,color(128,208,16),pipe3);
  Pipe3 = new Obstacle(738,136,27,64,color(128,208,16),pipe2);
  Pipe4 = new Obstacle(914,136,27,64,color(128,208,16),pipe2);
  Pipe5 = new Obstacle(2610,168,27,32,color(128,208,16),pipe1);
  Pipe6 = new Obstacle(2866,168,27,32,color(128,208,16),pipe1);
  initBoxes();
  initBlocks();
}

void drawPlatforms() {
  platform1.display();
  platform2.display();
  platform3.display();
  platform4.display();
  //platform1.Draw();
  //platform2.Draw();
  //platform3.Draw();
  //platform4.Draw();
  Pipe1.display();
  Pipe2.display();
  Pipe3.display();
  Pipe4.display();
  Pipe5.display();
  Pipe6.display();
  drawBoxes();
  drawBlocks();
}
