//This sketch will demo simple COLLISION DETECTION
//it will use a RECTANGULAR BOUNDING BOX
//It is good practice for CONDITIONS and CONTROL STRUCTURES and COORDINATES

//DECLARE variables for bounding box
int x, y, w, h;

void setup() {
  //set size
  size(400, 400);
  //ASSIGN variables their initial values
  x = 200;
  y = 200;
  w = 100;
  h = 50;
  
  //rectMode determines from where the rectangle is drawn
}

void draw() {
  //if the mouse is inside the bounding box
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y+ h) {
    //set fill to red
    fill(255, 0, 0);
    w++;
    h++;
  }
  //else
  else {
    //set fill to blue
    fill(0,0,255);
    w = 100;
    h = 50;
  }
  //Draw the bounding box using variables
  rect(x, y, w, h);
}
