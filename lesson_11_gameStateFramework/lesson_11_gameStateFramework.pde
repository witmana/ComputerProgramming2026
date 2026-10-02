//Most programs or games exist in different STATES of being
//You can think of a STATE kind of like a SCENE

//We will have three different states; START, GAME, and END
//DECLARE variable to control game states
String gameState = "START";

void setup(){
  size(400,400);
}

void draw(){
  //if statement will control what user sees based on the GAMESTATE VARIABLE
  //Every state needs a TRANSITION that will lead to the next state
  //The TRANSITION could be a CONDITION based on keyPressed, collision, time, score etc...
  if(gameState == "START"){
    drawStart();
  }else if(gameState == "GAME"){
    drawGame();
  }else if(gameState == "END"){
    drawEnd();
  }
}

//Each user interaction function SHOULD also have an if statement based on Gamestate
//a mouse click does different things in START, GAME, END etc...
void mouseClicked(){
  if(gameState == "START"){
    //go to gameState game
    gameState = "GAME";
  }else if (gameState == "GAME"){
    gameState = "END";
  }else if(gameState == "END"){
    gameState = "START";
  }
}

//define the functions that control game behavior
void drawStart(){
  background(0);
  textAlign(CENTER);
  text("welcome to a fun game", width/2, height/2);
  text("click to start", width/2, height/2+50);
}

void drawGame(){
  background(0);
  text("THIS IS THE GAME", width/2, height/2);
}

void drawEnd(){
  background(0);
  text("YOU WON THE GAME", width/2, height/2);
}
