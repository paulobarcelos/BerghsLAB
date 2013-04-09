
boolean space = false;

//  "array" av antonbilder;
PImage[] anton = new PImage[5];

// variabel håller reda på stripordningen
int strip = 0;

import ddf.minim.*;
Minim minim;
AudioPlayer player;
AudioPlayer player2;

void setup(){
   size(500,600);
   
   minim = new Minim(this); 
   player = minim.loadFile("apl.mp3");
   player2 = minim.loadFile("marvin.mp3");
 
   
   // ladda alla bilder
   anton[0] = loadImage("full.png");
   anton[1] = loadImage("shirt.png");
   anton[2] = loadImage("t.png");
   anton[3] = loadImage("pants.png");
   anton[4] = loadImage("naked.png");   
}

void draw(){
  // visa anton
  image(anton[strip], 0, 0);
  player2.play();
}

void keyPressed(){
  
 if (key == ' ') {
    // Check for exact moment the key changed from released to pressed
    if(space == false) {
      strip ++;
     if (strip == 4){
       
      player.play(0);
     }
      
      // strip inom array.
      if(strip > anton.length - 1){
        strip = 0;
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
