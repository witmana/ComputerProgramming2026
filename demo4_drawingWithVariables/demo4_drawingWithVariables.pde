//This sketch will demo using VARIABLES to draw a simple smiley

//In order to maintain PROPORTIONS
//if you need to adjust LOCATION of a shape...
//start with POSITION variables, then ADD or SUBTRACT the SIZE variable
//If you need to change the size of the SIZE variable, MULTIPLY or DIVIDE

//DECLARE the variables for POSITION and SIZE
float x = 300;
float y = 50;
float w = 50;

//set size of sketch window
size(400,400);

//draw head of the smiley
ellipse(x, y, w, w);

//draw eyes of smiley
ellipse(x-w/6, y-w/6, w/6, w/4);
ellipse(x+w/6, y-w/6, w/6, w/4);

//draw mouth
arc(x, y, w/2, w/2, 0, PI);
