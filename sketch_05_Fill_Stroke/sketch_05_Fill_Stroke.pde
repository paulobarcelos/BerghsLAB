void setup(){
  size(500, 500);
}

void draw(){
  // white background
  background(255, 255, 255);
  
  // red fill!
  fill(255,0,0);
  
  // draw a blue stroke if the mouse is pressed
  if(mousePressed){
    stroke(0, 0, 255);
    strokeWeight(10); // 10px thick
  }
  else{
    noStroke();
  }
  
  ellipse(mouseX, mouseY, 100, 100);
}
