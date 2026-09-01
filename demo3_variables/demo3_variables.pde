//This sketch is going to demonstrate the creation and manipulation of VARIABLES
//In math a variable is an input/output or unknown #
//In science class a variable is something you change or keep the same in an experiment
//In coding VARIABLES STORE DATA...they are CONTAINERS

//All variables have a TYPE, a NAME, and a VALUE

//TYPE refers to what kind of data it stores; ex: number, characters, true/false
//NAME is how we refer aka REFERENCE the variable...names should be descriptive
//VALUE is the actual data stored in the variable

//To create a variable you DECLARE it with TYPE and NAME
//int stands for INTEGER aka whole #
int year;

//to ASSIGN a VALUE, you use '=' sign
year = 2026;

//to PRINT the VALUE of a variable, we can use;
println(year);

//You can DECLARE and ASSIGN in the same line
int foundingYear = 1889;
println(foundingYear);

//You can MATHEMATICALLY MANIPULATE variables of the same TYPE
//'-' is subtraction, '+' is addition, '*' is multiplication, and '/' is division, '%' is remainder
int age = year - foundingYear;
println(age);
//you can do math operations inside println;
println(year - foundingYear);

//You can use CONCATENATION to string together text and variable values
//STRINGS of text are surrounded by " "
println("Marlborough is " + age + " years old.");

//CHALLENGE: Declare variables named a and b, then one called 'sum'...
//then print their values and sum with concatenation
//"the sum of a and b is sum"
int a = 5;
int b = 10;
int sum = a + b;
println("The sum of " + a + " and " + b + " is " + sum);

//Let's explore some other TYPES
//decimals can be stored in FLOAT
float decimal = 0.775;
println(decimal);
//characters can be stored in CHAR
char character = 'a';
//anything between " " is a STRING
String word = "hello";
String sentence = "I love strings";
println(sentence);

//TRUE and FALSE are stored in BOOLEAN
boolean condition = true;

condition = a > b;
println(condition);
