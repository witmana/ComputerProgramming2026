//This sketch will demo how to create a simple CLASS
//CLASSES should be created in SEPARATE TABS in PROCESSING
//CLASS NAMES should be CAPITALIZED

//Once we define a class, we can create an INSTANCE of the CLASS
//Each INSTANCE of the CLASS is called an OBJECT

//CHALLENGE: Create a second instance of a bouncing object

//1) DECLARE an object with TYPE (Class Name) and NAME
BouncingObject b;

void setup(){
  size(400,400);
  //2) INSTANTIATE the object by using keyword 'new'
  // and calling the class CONSTRUCTOR FUNCTION
  //CONSTRUCTOR functions have the same name as the class
  b = new BouncingObject();
  
  //3) ASSIGN our initial values
  //You can access an object's variables with DOT SYNTAX
  b.x = width/2;
  b.y = width/2;
  b.vx = 4;
  b.vy = 3;
}

void draw(){
  //4) call class functions with DOT SYNTAX
  b.updatePosition();
  b.checkEdges();
  b.drawObject();
}
