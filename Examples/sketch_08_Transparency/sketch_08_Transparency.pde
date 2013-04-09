PImage up;
PImage down;
PImage left;
PImage right;
PImage space;

void setup(){
  size(500, 500);
  
  up = loadImage("up.png");
  down = loadImage("down.png");
  left = loadImage("left.png");
  right = loadImage("right.png");
  space = loadImage("space.png");
  
}

void draw(){
  // yellow
  background(255, 255, 0);
  
  // check if there is any key pressed
  if(keyPressed){
    
    // check which key was pressed
    if(keyCode == UP){
      image(up, 0, 0);
    }
    else if(keyCode == DOWN){
      image(down, 0, 0);
    }
    else if(keyCode == LEFT){
      image(left, 0, 0);
    }
    else if(keyCode == RIGHT){
      image(right, 0, 0);
    }
    else if(key == ' '){
      image(space, 0, 0);
    }
  
  }
 
}
