// create 2 images for each one
PImage johan_top;
PImage johan_bottom;
PImage paulo_top;
PImage paulo_bottom;

// create variables that will hold how open is the mouth (0 to 1)
float johan_mouth = 0;
float paulo_mouth = 0;

// flag to know if the keys are pressed or not
boolean left = false;
boolean right = false;


void setup() {
  size(800, 500);

  // load the image files
  johan_top = loadImage("johan_top.png");
  johan_bottom = loadImage("johan_bottom.png");

  paulo_top = loadImage("paulo_top.png");
  paulo_bottom = loadImage("paulo_bottom.png");
}

void draw() {
  background(255);

  // calculate how open are the mouths
  if (left) {
    johan_mouth -= 0.15;
  }
  else {
    johan_mouth += 0.15;
  }

  if (johan_mouth < 0) {
    johan_mouth = 0;
  }
  else if (johan_mouth > 1) {
    johan_mouth = 1;
  }

  if (right) {
    paulo_mouth -= 0.15;
  }
  else {
    paulo_mouth += 0.15;
  }

  if (paulo_mouth < 0) {
    paulo_mouth = 0;
  }
  else if (paulo_mouth > 1) {
    paulo_mouth = 1;
  }

  // Draw Paulo in the right of the screen.
  // The mouth value will offset the vetical position of the images image.
  image(paulo_top, 450, 70 - 20 * paulo_mouth);
  image(paulo_bottom, 450, 70 + 20 * paulo_mouth);
  
  // Draw Joahn in the left of the screen.
  // His movement is more complex...
  // The mouth value will offset the both the vertical and the
  // horizontal postion of the images image.
  // We will also apply a rotation to them depending on the mouth value.
  
  
  pushMatrix(); // add a "layer" of transformation in the coordinate system
 
  // first we "translate" the cordinate system to the desired point
  translate(50 - 20 * johan_mouth, 90 - 5 * johan_mouth);
  // then we "rotate"
  // the rotate function only accepts radians, so we use the function radians()
  // to convert a value in degrees. 
  rotate(radians(-10 * johan_mouth));
  image(johan_top, 0, 0); // we use 0, 0 because we already translated
  popMatrix(); // remove the transformations
  
  pushMatrix();
  translate(50 + 70 * johan_mouth, 90 + 5 * johan_mouth);
  rotate(radians(10 * johan_mouth));
  image(johan_bottom, 0,0);
  popMatrix();
}

void keyPressed() {

  if (keyCode == LEFT) { 
    left = true;
  }

  else if (keyCode == RIGHT) {    
    right = true;
  }
}

void keyReleased() {
  if (keyCode == LEFT) {
    left = false;
  }

  else if (keyCode == RIGHT) {
    right = false;
  }
}

