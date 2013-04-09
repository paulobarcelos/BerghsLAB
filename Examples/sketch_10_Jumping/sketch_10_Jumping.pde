// y will store the vertical position of our rectangle
float y = 0;

void setup(){
  size(500, 500);
}

void draw(){
  background(255,255,255);
  
  if(keyPressed){
    if(key == ' '){
      // if space is pressed, increase y
      y = y + 20;
   
      // make sure y is not bellow the "floor"
      if(y > 500 - 50){
         y = 500 - 50;
      }
    }
  }
  else {
    // if there is nothing pressed, decrease y
    y = y - 10;
   
    // make sure y is not over the "ceiling"
    if(y < 50){
      y = 50;
    }
  }

  // Draw the rectangle to the screen 
  fill(255,0,0);
  rect(250 - 50, y - 50, 100, 100);
  
}
