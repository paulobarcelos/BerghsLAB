// import the audio library
import ddf.minim.*;

// create a instance of the Minim class,
// it will help us create the audio players
Minim minim;

// create the audio player for each specific key
AudioPlayer a_player;

// flag to know if the keys are pressed or not
boolean a = false;

PImage space;
PImage smile;


int frames;

void setup(){
  size(500, 500);
  
  space = loadImage("test_1.jpg");
  smile = loadImage("test_2.jpg");
    // we pass this to Minim so that it can load files from the data directory
  minim = new Minim(this);

  // load the sound files
  a_player = minim.loadFile("hej.wav");
  
  
  frames = 200;
  
}

void draw(){
  // yellow
  imageMode(CENTER);
  image(space, width / 2, height / 2);
         
  frames = frames + 1;
 
 if(frames < 200){
    image(smile, width / 2, height / 2);
  }


}

void keyPressed(){
  
 if (key == ' ') {
    // Check for exact moment the key was pressed for the first time
    if(a == false) {
      a_player.play(0); // pass 0 to always play from the beggining
      frames = 0;
    }    
    a = true;
  }
  
  
}


void keyReleased(){
  if (key == ' ') {
    a = false;   
  }
  

 
}


                                                              


