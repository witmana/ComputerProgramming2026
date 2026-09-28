//This sketch will demo how to use VELOCITY to create smooth motion
//VELOCITY is CHANGE in POSITION/TIME

//We need to be in ACTIVE mode...aka insert setup and draw functions

//1) DECLARE the variables for our character
int x = 200;
int y = 200;

//2) DECLARE VELOCITY variables
int vx = 0;
int vy = 0;

//SETUP function runs ONE time when play is pressed
void setup() {
  size(400, 400);
  
}

//DRAW function runs MANY TIMES per second...it LOOPS continuously
void draw() {
  //3) INCREMENT the POSITION by the VELOCITY
  x = x + vx;
  
  fill(x, 0, y);
  
  //4) draw character at position variables
  ellipse(x, y, 50, 50);
}

//5) Assign VELOCITY when keys are pressed
//KEYPRESSED runs each time a key is pressed
//keyCode stores that last special key pressed
void keyPressed() {
  println("A key was pressed!");
  //If the right arrow is pressed
  if (keyCode == RIGHT) {
    //assign positive x velocity
    vx = 2;
  }else if(keyCode == LEFT){
    //assign negative x velocity
    vx = -2;
  }
  
  //if the down arrow is pressed...
  if (keyCode == DOWN) {
    //increase y value
    y = y + 50;
  }else if(keyCode == UP){
    y-=50;
  }
}

//6) Assign VELOCITY to zero when key is released
//keyReleased runs anytime a key is RELEASED
void keyReleased(){
//If the right key OR the left key is RELEASED
  if(keyCode == RIGHT || keyCode == LEFT){
    //set x velocity to zero
    vx = 0;
  }
}
