//How could we apply a loop?
//How could I fill my screen with lines so it looks like graph paper?

int gridSize = 40;

//set size of sketch window
size(400,400);

//lets start drawing lines
//width is a built in variable that equals the width of the sketch window
line(0,10,width,10);
line(0,20,width,20);
line(0,30,width,30);
//notice we are repeating the same thing over and over...
//We are INCREMENTING the y coordinate by 10 each time

//This is a perfect oppotunity for a FOR loop
//condition is based on height of sketch window
for(int i = gridSize; i < height; i+=gridSize){
  //draw the line, using the 'i' variable for the y coordinate value
  line(0, i , width, i);
}

//CHALLENGE: Make the graph paper by adding the VERTICAL LINES (use another for loop)
//DOUBLE BONUS CHALLENGE: Make the vertical lines using a WHILE loop instead

for(int i = gridSize; i < height; i+=gridSize){
  //draw the line, using the 'i' variable for the y coordinate value
  line(i, 0 , i, height);
}
