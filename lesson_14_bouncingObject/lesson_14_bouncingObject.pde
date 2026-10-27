//This will be a simple bouncing object

//1) DECLARE variables for position and velocity
float x, y, vx, vy;
float x2, y2, vx2, vy2;

void setup(){
  size(400,400);
  
  //2) ASSIGN the initial values
  x = width/2;
  y = height/2;
  vx = 3;
  vy = 2;
  
  x2 = 100;
  y2 = 100;
  vx2 = 5;
  vy2 = 4;
}

void draw(){
  //3) INCREMENT the POSITION by the VELOCITY
  x += vx;
  y += vy;
  
  x2 += vx2;
  y2 += vy2;
  
  //4) Create bounce by CHECKING EDGES
  //if object touches edge of screen
    //change direction of velocity (multiply by -1)
  if(x < 0 || x > width){
    vx*=-1;
  }
  if(y < 0 || y > height){
    vy*=-1;
  }
  
  if(x2 < 0 || x2 > width){
    vx2*=-1;
  }
  if(y2 < 0 || y2 > height){
    vy2*=-1;
  }
  
  //5 DRAW object at POSITION variables
  ellipse(x, y, 20, 20);
  ellipse(x2, y2, 30, 30);
}
