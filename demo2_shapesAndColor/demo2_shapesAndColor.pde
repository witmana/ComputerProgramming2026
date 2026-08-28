//This will demo basic SHAPES and COLOR in processing

//First let's resize the sketch window
//Procession dimensions are in PIXEL COORDINATES
//the order is always WIDTH, HEIGHT
size(400,400);

//COLOR by default is repsented by RED, GREEN, BLUE values
//And used ADDITIVE COLOR MIXING

//SHAPES are drawn with STROKE and with FILL
//STROKE is the outline, FILL is the color inside

//I can adjust thickness of STROKE with strokeweight()
strokeWeight(8);

//For ALL COLOR FUNCTIONS
//ONE PARAMETER 0-255 is GRAYSCALE with 0=Black and 255=White
//THREE PARAMETERS 0-255 is RGB
//ONE PARAMETER Hexidecimal can be found with "COLOR PICKER"
//An EXTRA PARAMETER 0-255 will be ALPHA, aka TRANSPARENCY

//I can change the COLOR of FILL with;
fill(0);

//I can change the COLOR of stroke with;
stroke(255);
//A color function impacts everthing afterwards UNTIL...
//the next color function


//point(x,y)
point(100,200);

stroke(139, 27, 240);

//rect(x,y,width,height)
rect(200,200,150,50);

//Fourth parameter refers to OPACITY (0=transparent, 255=opaque)
fill(240, 27, 194, 125);

//ellipse(x,y,w,h);
ellipse(200,200,100,100);

//Processing executes commands SEQUENTIALLY from TOP to BOTTOM
//line(x,y,x2,y2);
line(50,50,250,300);

//remove stroke
noStroke();

//triange(x,y,x2,y2,x3,y3)
triangle(200,50,300,50,250,150);

noFill();
stroke(#1BF0C3);
//with ARCs you first define an ELLIPSE
//then define the START and END of the ARC in RADIANS
//This is based on the UNIT CIRCLE
//arc(x,y,w,h,START, END);
arc(100,300,100,100,0, PI);
