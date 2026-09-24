//This sketch will demo using variables to draw a simple smiley

//DECLARE and ASSIGN variables for position and size
int x = 50;
int y = 300;
int w = 50;

//"COMMAND T" auto indents in Processing

void setup() {
  //set size for sketch window
  size(400, 400);
}

void draw() {
  //update the POSITION variables to the MOUSE COORDINATES
  x = mouseX;
  y = mouseY;
  //optionally set size variable to mouse coordinate
  w = mouseY;
  //OR for fun you can INCREMENT a variable
  //w = w + 1;
  
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
