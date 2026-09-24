//LOOPS repeat a BLOCK {} of code so long as a CONDITION () is true

//The WHILE loops repeats so long as a CONDITION is TRUE
//typically the CONDITIONS in loops will have VARIABLES...
//that get INCREMENTED inside the STATEMENT
//beware of INFINITE LOOPS that are always true...
//sometimes you want an infinite loop, sometimes they crash your computer

//SAMPLE WHILE LOOP
//1) DECLARE a CONTROL VARIABLE and ASSIGN an initial value
int n = 0;

//2) set the CONDITION for the loop to run
while(n < 5){
  //3) write the STATEMENT I want to repeat
  println(n);
  //4) INCREMENT the control variable
  n = n + 1;
}
println("end of while loop");

//Sample FOR loop
//FOR loops combine the CONTROL VARIABLE, the CONDITION, and the INCREMENT
//"i++" is shorthand for "i = i + 1"
for(int i = 0; i < 5; i++){
  println(i);
}
println("end of for loop");

//You have full control over how the control variable is incremented
for(int i = 10; i < 120; i*=2){
  println(i);
}
