//Gamestate Structure



//BALLOON GAME
//Game Concept: Balloons float up from the bottom of the screen
//You get a point each time you click on a balloon
//Each time you 'pop' a balloon, the next balloon gets faster
//If the balloon reaches the top, you lose
//Most programs or games exist in different STATES of being
//You can think of a STATE kind of like a SCENE

//We will have three different states; START, GAME, and END
//DECLARE variable to control game states
String gameState = "START";
//declare score and position variables
int score;
float x, y, r, vy;


void setup() {
  size(400, 400);
  //assign initial values
  score = 0;
  x = width/2;
  y = height;
  r = 25;
  vy = -1;
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
  textAlign(CENTER);
  text("welcome to a fun game", width/2, height/2);
  text("click to start", width/2, height/2+50);

  //if mouse if pressed, transition to "GAME" state
  if (mousePressed) {
    gameState = "GAME";
  }
}

void drawGame() {
  background(0);
  text("THIS IS THE GAME", width/2, height/2);

  //increment the position by the velocity
  y += vy;

  //draw balloon at position variables
  circle(x, y, r*2);

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
  if(y < 0-r){
    //transition to "END" state
    gameState = "END";
  }
}

void drawEnd() {
  background(0);
  text("YOU WON THE GAME", width/2, height/2);
  
  if(mousePressed){
    gameState = "START";
  }
}
