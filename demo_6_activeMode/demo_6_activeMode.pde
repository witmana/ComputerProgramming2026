//This sketch will demo how to use the "ACTIVE MODE" in Processing

//By default Processing runs in STATIC MODE
//In STATIC MODE commands are executed in SEQUENCE TOP TO BOTTOM
//The program ends when it reaches the bottom

//ACTIVE MODE utilizes two special functions called SETUP and DRAW
//SETUP runs once when the program is played
//DRAW loops many times per second

//To declare the SETUP function we use the keyword VOID
//VOID means the function doesn't 'return' a value, it just does stuff (like draw)
//SETUP and DRAW have parentheses after them, but nothing goes inside
//The statements to be executed go inside a CODE BLOCK surrounded by curly brackets {}

//DECLARE a variable for our x coordinate
//DECLARATIONS go ABOVE setup for variables used in both setup and draw
int x, y;

//what goes insde setup runs ONCE
void setup(){
  //declare size of the sketch window
  size(400,400);
  println("Hello");
  
  //SETUP is a good place to ASSIGN initial values to variables
  x = 200;
  y = 200;
}

//what goes inside draw is LOOPED (repeated) many times per second
void draw(){
  background(0);
  
  println("Hello Again");
  
  noStroke();
 
  //draw our character in terms of x
  ellipse(x, y, 20, 20);
  
  //INCREMENT our position variable
  //ADDING moves to the right, SUBTRACTING moves to the left
  //LARGER increments result in FASTER MOTION
  x = x + 2;
  println(x);
  
  //Check if ellipse is off screen, if it is, reset to left side of screen
  //if x is greater than 400
  if(x > 400){
    //set x to 0
    x = 0;
    y = int(random(200,400));
  }
}
