boolean space = false;

// Declare an "array" of images;
PImage[] apple = new PImage[7];

// a variable that will hold the number of bites
int bites = 0;

void setup(){
   size(500,500);
   
   // load all the images
   apple[0] = loadImage("apple0.jpg");
   apple[1] = loadImage("apple1.jpg");
   apple[2] = loadImage("apple2.jpg");
   apple[3] = loadImage("apple3.jpg");
   apple[4] = loadImage("apple4.jpg");
   apple[5] = loadImage("apple5.jpg");
   apple[6] = loadImage("apple6.jpg");
}

void draw(){
  // draw the apple that corresponds to the current bite
  image(apple[bites], 0, 0);
}

void keyPressed(){
  
 if (key == ' ') {
    // Check for exact moment the key changed from released to pressed
    if(space == false) {
      bites ++;
      
      // don't let bit be bigger than the last element of the array.
      if(bites > apple.length - 1){
        bites = apple.length - 1;
      }
    }    
    space = true;
  }

}

void keyReleased(){
  
  if (key == ' ') {
    space = false;
  }
 
}
