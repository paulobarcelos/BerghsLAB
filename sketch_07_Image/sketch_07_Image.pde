// Define the image variable
PImage img;

void setup(){
  size(500, 500);
  
  // Images must be in the "data" directory to load correctly
  img = loadImage("makeymakey.jpg");
}

void draw(){
  // white background
  background(255, 255, 255);
  
  // Draw the image in the top left corner
  image(img, 0, 0);
  
  // Draw a small image, under the first one
  image(img, 0, img.height, 100, 100);
  
  // Draw a small image following the mouse  
  image(img, mouseX - 50, mouseY - 50, 100, 100);
 
}
