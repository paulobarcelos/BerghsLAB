// this variable will control how much we squeeze.
// the value goes from 0 to 1
float squeeze = 0;

// the maximum radius of the ellipse
int radius = 400;

void setup(){
  size(500,500);
}

void draw(){
  // white background
  background(255);
  
  // red fill
  fill(255,0,0);
  
  // depending if the spacebar is pressed or released,
  // increase or decrease the squeeze amount
  // (tweak the number to change the speed of the transition)
  if(keyPressed){
    if(key == ' '){
      squeeze = squeeze - 0.1;
    }
  }
  else{
    squeeze = squeeze + 0.1;
  }
  
  // don't let squeeze be bigger than 1 or smaller than 0.1
  // (if we let it go down till 0, the ellipse would disapear!)
  if (squeeze < 0.1){
    squeeze = 0.1;
  }
  else if (squeeze > 1){
    squeeze = 1;
  }
  
  // draw the ellipse in the midle of the screen, using the squeeze to control the width
  ellipse(width/2, height/2, squeeze * radius, radius);
  
}

