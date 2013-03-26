// import the audio library
import ddf.minim.*;

// create a instance of the Minim class,
// it will help us create the audio players
Minim minim;

// create the audio player for each specific key
AudioPlayer a_player;
AudioPlayer s_player;
AudioPlayer d_player;
AudioPlayer f_player;

// flag to know if the keys are pressed or not
boolean a = false;
boolean s = false;
boolean d = false;
boolean f = false;


void setup(){
  // we pass this to Minim so that it can load files from the data directory
  minim = new Minim(this);

  // load the sound files
  a_player = minim.loadFile("a.mp3");
  s_player = minim.loadFile("s.mp3");
  d_player = minim.loadFile("d.mp3");
  f_player = minim.loadFile("f.mp3");
 
}

void draw(){
  // nothing to draw
}

void keyPressed(){
  
 if (key == 'a') {
    // Check for exact moment the key was pressed for the first time
    if(a == false) {
      a_player.play(0); // pass 0 to always play from the beggining
    }    
    a = true;
  }
  
  else if (key == 's') {
    if(s == false) {
      s_player.play(0);
    }    
    s = true;
  }
  
 else if (key == 'd') {
    if(d == false) {
      d_player.play(0);
    }    
    d = true;
  }
  
  else if (key == 'f') {
    if(f == false) {
      f_player.play(0);
    }    
    f = true;
  }
 
}

void keyReleased(){
  if (key == 'a') {
    a = false;
  }
  
  if (key == 's') {
    s = false;
  }
  
  if (key == 'd') {
    d = false;
  }
  
  if (key == 'f') {
    f = false;
  }
  
 
}
