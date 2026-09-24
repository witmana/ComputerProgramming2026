//Practice 1

void setup() {
  size(400, 400);
  println(returnProduct(10, 5));
  printProduct(25, 4);
  drawRectangle(100, 200, 100, 50);
  drawReverseTarget(100,100,5);
  drawTarget(200,200,7);
}

float returnProduct(float a, float b) {
  return a*b;
}

void printProduct(float a, float b) {
  println(a*b);
}

void drawRectangle(int x, int y, int w, int h) {
  line(x, y, x+w, y);
  line(x+w, y, x+w, y+h);
  line(x+w, y+h, x, y+h);
  line(x, y+h, x, y);
}

void drawStuff(int x, int y, int n) {
  for (int i = 0; i < n; i++) {
    ellipse(x+i*20, y, 20, 20);
  }
}

void drawTarget(int x, int y, int n){
  for(int i = 0; i < n; i++){
    noFill();
    circle(x,y,20+i*20);
  }
}

void drawReverseTarget(int x, int y, int n){
  for(int i = n-1; i >= 0; i--){
    circle(x,y,20+i*20);
  }
}
