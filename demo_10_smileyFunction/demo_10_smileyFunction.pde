//This sketch will demo using variables to draw a simple smiley
//"COMMAND T" auto indents in Processing

void setup() {
  //set size for sketch window
  size(400, 400);
  drawSmiley(50,50,50);
  drawSmiley(300,200,100);
  drawSmiley(100,300,200);
}

void draw() {
  drawSmiley(mouseX,mouseY,50);
}

//DECLARE our smiley function
void drawSmiley(int x, int y, int w){
  fill(255,255,0);
  strokeWeight(w/25);
  //draw the head of our smiley
  ellipse(x, y, w, w);
  
  fill(0);
  noStroke();
  //draw the eyes of the smiley
  ellipse(x-w/6, y-w/6, w/4, w/4);
  ellipse(x+w/6, y-w/6, w/4, w/4);

  stroke(0);
  noFill();
  //draw mouth of smiley with arc function
  arc(x, y+w/20, w/2, w/2, 0, PI);
}
