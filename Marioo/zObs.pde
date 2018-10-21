
class Obstacle {
  float x;
  float y;
  float w;
  float h;
  color c;
  PImage Img = loadImage("Pipe1.png");

  Obstacle(float _x, float _y, float _w, float _h, color _c, PImage _Img) {
    w = _w*m;
    h = _h*m;
    x = _x*m;
    y = _y*m;
    c = _c;
    Img = _Img;
  }

  Obstacle(float _x, float _y, float _w, float _h, color _c) {
    w = _w*m;
    h = _h*m;
    x = _x*m;
    y = _y*m;
    c = _c;
  }

  void display() {
    fill(c);
    noStroke();
    rect(x, y, w, h);
    //image(Img, x, y, w, h);
    collide();
  }

  void Draw() {
    float X = x;
    float Y = y;
    float W = 16;
    for (int i =0; i<w/(W*m); i++) {
      //image(Img, X, Y, W*m, W*m);
      X+=W*m;
    }
    X = x;
    Y+=W*m;
    for (int i =0; i<w/(W*m); i++) {
      image(Img, X, Y, W*m, W*m);
      X+=W*m;
    }
    X = x;
    Y+=W*m;
    for (int i =0; i<w/(W*m); i++) {
      image(Img, X, Y, W*m, W*m);
      X+=W*m;
    }
  }


  void collide() {
    if (player.x + player.w > x && player.y +player.h >y && player.y <y+h && player.x < x+w) {
      if (player.x < x) {
        player.x = x  - player.w;
      } else if (player.y < y) {
        player.y = y - player.h;
        sit = true;
      } else if (player.x+player.w > x) {
        player.x = x+w;
      } else if (player.y+player.h > y) {
        player.y = y+h;
      }
    }
  }
}
