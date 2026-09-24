//FUNCTION is a REUSABLE block of code
//Processing has many built in (ex. ellipse(), stroke() etc)...
//FUNCTIONS are a great way to organize your code
//FUNCTIONS need to be made in ACTIVE MODE

void setup(){
  //CALL custom functions in SETUP or DRAW (or inside other functions)
  //CALL by saying its name...
  sayHello();
  sayHello();
  printString("Whoa");
  //for functions that RETURN a VALUE... 
  //we must do something with the VALUE (like print or store it)
  println(averageTwoNumbers(88.5, 92.7));
  println(productOfTwoNumbers(6,7));
}

void draw(){

}

//custom FUNCTIONS need to be DECLARED OUTSIDE of setup or draw
//DECLARE my function with RETURN TYPE and NAME
//VOID functions don't return any VALUES
void sayHello(){
  println("Hello!");
}

//We can also specify PARAMETERS between the PARENTHESES
//PARAMETERS are VARIABLES that can be used inside the function
//When we DECLARE a PARAMETER, we specify TYPE and NAME
void printString(String text){
  println(text);
}

//let's make a function with a RETURN TYPE
//functions with RETURN TYPE must have a RETURN keyword inside them
//float is the TYPE for decimals
float averageTwoNumbers(float one, float two){
  float average = (one+two)/2;
  return average;
}

//make a function that returns the PRODUCT of two numbers
float productOfTwoNumbers(float one, float two){
  float product = one*two;
  return product;
}
