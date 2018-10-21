
void keyPressed() {
  if(keyCode == UP && sit) {
     gravity = -30;
  }
  if(keyCode == LEFT) {
    left = true;
  }
  if(keyCode == RIGHT) {
    right = true;
  }
}

void keyReleased() {
  if(keyCode == LEFT) {
    left = false;
  }
  if(keyCode == RIGHT) {
    right = false;
  }
}
