//This sketch will demo how to LOAD and RESIZE images
//images must be in the SKETCH folder
//To easily get to sketch folder, click "Sketch" --> "Show Sketch Folder"
//Processing likes pngs and jpgs

//CHALLENGE: ADD A BACKGROUND IMAGE that sets the scene for the game
//HINT: RESIZE the image so it matches your sketch window (or close to it)
//HINT 2: Think about whether you want to draw the image from the CENTER or CORNER...
//Either is valid, just will have different results
//HINT 3: You can adjust sketch window SIZE to match background aspect ratio

//TINT is a function that is like FILL, but for images

//BALLOON GAME
//Game Concept: Balloons float up from the bottom of the screen
//You get a point each time you click on a balloon
//Each time you 'pop' a balloon, the next balloon gets faster
//If the balloon reaches the top, you lose
//Most programs or games exist in different STATES of being
//You can think of a STATE kind of like a SCENE


//1)DECLARE the image and give it a name
PImage balloon;
PImage background;

//We will have three different states; START, GAME, and END
//DECLARE variable to control game states
String gameState = "START";
//declare score and position variables
int score;
float x, y, r, vy;


void setup() {
  size(433, 512);
  //assign initial values
  score = 0;
  x = width/2;
  y = height;
  r = 25;
  vy = -1;
  
  //2) Load the image and assign it to the PImage
  balloon = loadImage("balloon.png");
  background = loadImage("background.jpg");

  //3) OPTIONALLY RESIZE the image
  balloon.resize(50, 60);
  background.resize(background.width/10, background.height/10);

  //4) OPTIONALLY draw the image from the CENTER instead of CORNER
  imageMode(CENTER);
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
  text("welcome to a fun game", width/2, height/2);
  text("press a key to start", width/2, height/2+50);

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
  //5) Draw the IMAGE with image function
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
