//this sketch will demo COLLISION DETECTION with a CIRCULAR BOUNDING BOX

//DECLARE variables for the circle(s)
int x, y, r, mouseR;

void setup() {
  //size
  size(400, 400);
  //ASSIGN initial values
  x = 200;
  y = 200;
  r = 100;
  mouseR = 50;
}

void draw() {
  //if the distance between the mouse and circle is LESS THAN the combined radii
  if (dist(x, y, mouseX, mouseY) < r+mouseR) {
    //set fill to red
    fill(255, 0, 0);
    //draw circle(s) using variables
    circle(x, y, r*2);
    fill(0, 0, 255);
    circle(mouseX, mouseY, mouseR*2);
  }
  //else
  else {
    //set fill white
    fill(255);
    circle(x, y, r*2);
    circle(mouseX, mouseY, mouseR*2);
  }
}
