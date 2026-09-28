//This sketch will demo how to use the keyboard for user interaction

//We need to be in ACTIVE mode...aka insert setup and draw functions

//DECLARE the variables for our character
int x = 200;
int y = 200;

//SETUP function runs ONE time when play is pressed
void setup() {
  size(400, 400);
  noStroke();
}

//DRAW function runs MANY TIMES per second...it LOOPS continuously
void draw() {
  fill(x, 0, y);
  //draw character at position variables
  ellipse(x, y, 50, 50);
}

//KEYPRESSED runs each time a key is pressed
//keyCode stores that last special key pressed
void keyPressed() {
  println("A key was pressed!");
  //If the right arrow is pressed
  if (keyCode == RIGHT) {
    //increase x value
    x = x + 50;
  }else if(keyCode == LEFT){
    //decrease the x value
    x-=50;
  }
  
  //if the down arrow is pressed...
  if (keyCode == DOWN) {
    //increase y value
    y = y + 50;
  }else if(keyCode == UP){
    y-=50;
  }
}
