//This program will demo how to use an IF ELSE statement
//IF ELSE can be used to control the BEHAVIOR of your code
//The BEHAVIOR is controlled by CONDITIONS that evaluate as TRUE or FALSE

//In the IF ELSE, the CONDITION is surrounded by PARENTHESES
//The STATEMENT is surrounded by CURLY BRACKETS {}
//if(CONDITION){STATEMENT}

//CURLY BRACKETS define BLOCKS of code in JAVA
//Every OPEN bracket has a corresponding CLOSED bracket
//Code inside of a BLOCK should be indented

//Declare a variable to check in our conditions
int n = 3;

if(n < 5){
  println("n is less than 5");
}else if(n > 5){
  println("n is greater than 5");
}else{
  println("the value of n is " + n);
}

//This will be a sample for the PC boolean expressions
boolean happy = true;
boolean sad = true;

//eyebrows
//eyes
//tired
//tears
//embarrassed

//You could have seperate if/else statements for different parts of the emoji
//ex.. happy and sad could control the mouth
//a seperate if/else could control the eyes etc.

//if the emoji is happy and NOT sad
if(happy && !sad){
  //draw happy expression
  println(":)");
}
//if the emoji is sad and NOT happy
else if(sad && !happy){
  //draw sad expression
  println(":(");
}
//else
else{
  //draw neutral expression
  println(":|");
}
