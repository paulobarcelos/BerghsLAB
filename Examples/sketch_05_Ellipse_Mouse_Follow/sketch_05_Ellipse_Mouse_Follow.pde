void setup(){
  // Define the size of our window to 500px x 500px
  size(500,500);
}

void draw(){
  // set the backround color to red (R - 255, G - 0, B - 0)
  background(255,0,0);
  
  // Draws the ellipse in the mouse coordinates
  ellipse(mouseX, mouseY, 100, 100);
}
