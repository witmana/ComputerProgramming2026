void setup() {
  size(400,400);
  drawTarget(200, 200, 4);
  drawTarget(100,100,6);
  drawLineRect(300,200,50,100);
}

void drawTarget(int x, int y, int n) {
  noFill();
  for (int i = 0; i < n; i++) {
    ellipse(x, y, 20+i*20, 20+i*20);
  }
}

void drawLineRect(int x, int y, int w, int h){
  //top side
  line(x, y, x+w, y);
  //left side
  line(x, y, x, y+h);
  //bottom side
  line(x, y+h, x+w, y+h);
  //right side
  line(x+w, y, x+w, y+h);
}
