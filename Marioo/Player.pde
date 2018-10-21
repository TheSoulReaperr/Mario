Player player;
PImage MarioStand;
PImage MarioRun;
boolean left = false;
boolean right = false;

class Player {
  float x;
  float y;
  float w;
  float h;

  Player(float _x, float _y, float _w, float _h) {
    x = _x*m;
    y = _y*m;
    w = _w*m;
    h = _h*m;
  }
  void display() {
    rectMode(CORNER);
    rect(x, y, w, h);
    //image(MarioStand,x,y,w,h);
    y+=gravity;
    move();
  }
  
  void move() {
    if(left)   x-=40;
    if(right)  x+=40;
    if (gravity < 10) {
      gravity +=1;
    }
    if(x <= 0) x = 0;
    if(x >= 200*m) dead = true; 
  }
}
