
Obstacle blocks1[];
Obstacle blocks2[];
Obstacle blocks3[];
Obstacle blocks4[];
Obstacle blocks5[];
Obstacle blocks6[];
Obstacle blocks7[];
Obstacle block8;

PImage block1;
PImage castle;

void initBlocks() {
  float x = 2144;
  float y = 184;
  float w =16;
  int k = 0;
  blocks1 = new Obstacle[10];
  for(int i=0; i<4; i++ ){
    for(int j=0;j<=i;j++) {
      blocks1[k] = new Obstacle(x,y,w,w,color(180,70,0),block1);
      y-=w;
      k++;
    }
    y=184;
    x+=w;
  }
  
  x = 2303-w;
  y = 184;
  k = 0;
  blocks2 = new Obstacle[10];
  for(int i=0; i<4; i++ ){
    for(int j=0;j<=i;j++) {
      blocks2[k] = new Obstacle(x,y,w,w,color(180,70,0),block1);
      y-=w;
      k++;
    }
    y=184;
    x-=w;
  }
  
  x = 2367;
  y = 184;
  k = 0;
  blocks3 = new Obstacle[10];
  for(int i=0; i<4; i++ ){
    for(int j=0;j<=i;j++) {
      blocks3[k] = new Obstacle(x,y,w,w,color(180,70,0),block1);
      y-=w;
      k++;
    }
    y=184;
    x+=w;
  }
  
  x = 2431;
  y = 136;
  k = 0;
  blocks4 = new Obstacle[4];
  for(int i=0; i<4;i++) {
    blocks4[i] = new Obstacle(x,y,w,w,color(180,70,0),block1);
    y+=w;
  }
  
  x = 2544-w;
  y = 184;
  k = 0;
  blocks5 = new Obstacle[10];
  for(int i=0; i<4; i++ ){
    for(int j=0;j<=i;j++) {
      blocks5[k] = new Obstacle(x,y,w,w,color(180,70,0),block1);
      y-=w;
      k++;
    }
    y=184;
    x-=w;
  }
  
  x = 2896;
  y = 184;
  k = 0;
  blocks6 = new Obstacle[36];
  for(int i=0; i<8; i++ ){
    for(int j=0;j<=i;j++) {
      blocks6[k] = new Obstacle(x,y,w,w,color(180,70,0),block1);
      y-=w;
      k++;
    }
    y=184;
    x+=w;
  }
  
  x = 3024;
  y = 184;
  k = 0;
  blocks7 = new Obstacle[8];
  for(int i=0; i<8;i++) {
    blocks7[i] = new Obstacle(x,y,w,w,color(180,70,0),block1);
    y-=w;
  }
  block8 = new Obstacle(3169,184,w,w,color(180,70,0),block1);
}

void drawBlocks() {
  for(int i=0;i<blocks1.length;i++) {
    blocks1[i].display();
  }
  for(int i=0;i<blocks2.length;i++) {
    blocks2[i].display();
  }
  for(int i=0;i<blocks3.length;i++) {
    blocks3[i].display();
  }
  for(int i=0;i<blocks4.length;i++) {
    blocks4[i].display();
  }  
  for(int i=0;i<blocks5.length;i++) {
    blocks5[i].display();
  }
  for(int i=0;i<blocks6.length;i++) {
    blocks6[i].display();
  }
  for(int i=0;i<blocks7.length;i++) {
    blocks7[i].display();
  }
  stroke(128,208,16);
  strokeWeight(4);
  line(3176.5*m,40*m,3176.5*m,183*m);
  block8.display();
  //image(castle,3232*m,106*m,79*m,94*m);
}
