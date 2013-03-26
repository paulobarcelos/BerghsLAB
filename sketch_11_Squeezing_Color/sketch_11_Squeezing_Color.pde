float squeeze = 0;
int radius = 400;

void setup(){
  size(500,500);
  
  // change the color mode to HSB so it's easy to 
  // transition between colors (think in a rainbow with 100 steps).
  colorMode(HSB, 100);
}

void draw(){
  // H - doesn't matter, S - minumum, B - maximum = white!
  background(0, 0, 100);
  
  if(keyPressed){
    if(key == ' '){
      squeeze = squeeze - 0.01;
    }
  }
  else{
    squeeze = squeeze + 0.1;
  }

  if (squeeze < 0.1){
    squeeze = 0.1;
  }
  else if (squeeze > 1){
    squeeze = 1;
  }
  
  // set the fill color depending on the squeeze.
  // H will go from 0 - red to 32 green
  // S and B on maximum!
  fill(squeeze * 32, 100, 100);
  
  ellipse(width/2, height/2, squeeze * radius, radius);
}
