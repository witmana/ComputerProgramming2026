//Here is where I will define the BouncingObject Class
//We will define the Object's PROPERTIES (aka VARIABLES) and BEHAVIORS (aka FUNCTIONS)

//DECLARE with keyword "class" and CLASS NAME
class BouncingObject {
  //DECLARE object properties for POSITION and VELOCITY
  float x, y, vx, vy;

  //DECLARE ball BEHAVIORS aka FUNCTIONS
  void updatePosition() {
    x += vx;
    y += vy;
  }

  void checkEdges() {
    if (x < 0 || x > width) {
      vx*=-1;
    }
    if (y < 0 || y > height) {
      vy*=-1;
    }
  }
  
  void drawObject(){
    ellipse(x, y, 20, 20);
  }
}
