//this sketch will demo how to add cool FONTS to Processing

//There are two ways to add fonts; loadFont and createFont
//LOADFONT uses fonts already on your computer...TOOLS --> CREATEFONT
//CREATEFONT uses .otf or.ttf font files downloaded from online
//dafont.com has lots of free fonts

//Createfont method
//1) Download the .otf or .ttf and put it in the SKETCH FOLDER

//2) DECLARE font with type and name
PFont font;
PImage balloon;
PImage background;

//We will have three different states; START, GAME, and END
//DECLARE variable to control game states
String gameState = "START";
//declare score and position variables
int score;
float x, y, r, vy;
int jumpScareTimer;


void setup() {
  size(433, 512);
  //assign initial values
  score = 0;
  x = width/2;
  y = height;
  r = 25;
  vy = -1;
  
  //3) ASSIGN a value to font with
  font = createFont("CarnivalMF OpenShadow.ttf", 48);
  
  //4) SWITCH to the font
  textFont(font);
  
  
  balloon = loadImage("balloon.png");
  background = loadImage("background.jpg");

  balloon.resize(50, 60);
  background.resize(background.width/10, background.height/10);

  imageMode(CENTER);
  
  jumpScareTimer = 500;
}

void draw() {
  //if statement will control what user sees based on the GAMESTATE VARIABLE
  //Every state needs a TRANSITION that will lead to the next state
  //The TRANSITION could be a CONDITION based on keyPressed, collision, time, score etc...
  if (gameState == "START") {
    drawStart();
  } else if (gameState == "GAME") {
    drawGame();
  } else if (gameState == "END") {
    drawEnd();
  }
}

//define the functions that control game behavior
void drawStart() {
  background(0);
  imageMode(CORNER);
  image(background, 0, 0);
  textAlign(CENTER);
  
  //5) OPTIONALLY adjust size of font, size is roughly pixel height
  textSize(40);
  fill(255,0,0);
  text("BALLOON POP", width/2, height/2-100);
  textSize(15);
  fill(0);
  text("press a key to start", width/2, height/2);

  //if mouse if pressed, transition to "GAME" state
  if (keyPressed) {
    gameState = "GAME";
  }
}

void drawGame() {
  background(0);
  imageMode(CORNER);
  noTint();
  image(background, 0, 0);
  text("SCORE: " + score, width/2, 20);

  //increment the position by the velocity
  y += vy;

  //draw balloon at position variables
  //circle(x, y, r*2);
  imageMode(CENTER);
  tint(255, 200);
  image(balloon, x, y+5);

  if (mousePressed) {
    //if the mouse was colliding with the balloon
    if (dist(x, y, mouseX, mouseY) < r) {
      //reset the balloons position with random x value
      y = height+r;
      x = random(r, width-r);
      //increment velocity
      vy-=0.5;
      //increment score
      score++;
      
      //dice roll equivalent
      int roll = int(random(1,7));
      if(roll == 5){
        //show scary picture
      }
    }
  }

  //If balloon reaches the top of the screen
  if (y < 0-r) {
    //transition to "END" state
    gameState = "END";
  }
  
}

void drawEnd() {
  background(0);
  imageMode(CORNER);
  image(background, 0, 0);
  text("YOU POPPED " + score + " BALLOONS", width/2, height/2);

  if (mousePressed) {
    gameState = "START";
    resetGame();
  }
}

//This function will assign initial values for all our variables
void resetGame() {
  score = 0;
  x = width/2;
  y = height;
  r = 25;
  vy = -1;
}
