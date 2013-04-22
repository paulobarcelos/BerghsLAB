PShape bot;
PShape up;

import ddf.minim.*;

Minim minim;
AudioInput in;
float mouthopen = 10;
float threshold = 80;
float hyshDelay = 0;
boolean hasPlayed = false;
AudioPlayer player;

void setup() {
  size(1500, 1000);
  // The file "bot1.svg" must be in the data folder
  // of the current sketch to load successfully
  bot = loadShape("owl.svg");
  up = loadShape("tyst.svg");
  
   
  smooth();

  minim = new Minim(this);
  

  // get a line in from Minim, default bit depth is 16
  in = minim.getLineIn(Minim.STEREO, 512);
  
  player = minim.loadFile("shh.wav"); 
  
} 

void draw(){
   background(255, 100, 100);
  //shape(bot, 110, 90, 100, 100);  // Draw at coordinate (110, 90) at size 100 x 100
  shape(bot, 30, 30);
  
  //stroke(255,200,200);
  strokeWeight(4);
  fill(0);

  float volume = abs(in.left.get(0) ) * 200;
  float step = (volume - mouthopen)/10;
  mouthopen = mouthopen + step;
  
  ellipse(205, 210, 20, constrain(mouthopen,3,100));
 
  if(keyPressed){      
    //AudioInput  AudioInput < 200
    // check which key was pressed
    if(keyCode == UP){
      hysh();
    }
  }
  
  if (hyshDelay > 0) {
    hysh();
    hyshDelay -= 0.02;
  } else {
    if (constrain(volume, 0, 100) > threshold) {
      hyshDelay = 1;
    } else {
      hasPlayed = false;  
    }
  }
}

void hysh() {
  if (hasPlayed == false) {
    player.play(0);
    hasPlayed = true;
  }  
  background(255, 255,0 );
  shape(up, 30, 30); 
}

