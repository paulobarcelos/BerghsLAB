// import the audio library
import ddf.minim.*;

// create a instance of the Minim class,
// it will help us create the audio players
Minim minim;

// create the audio player for a specific key
AudioPlayer a_player;
AudioPlayer s_player;
AudioPlayer d_player;
AudioPlayer f_player;
AudioPlayer g_player;

// flags
boolean a = false;
boolean s = false;
boolean d = false;
boolean f = false;
boolean g = false;


void setup(){
  // we pass this to Minim so that it can load files from the data directory
  minim = new Minim(this);

  // load the sound files
  a_player = minim.loadFile("a.mp3");
  s_player = minim.loadFile("s.mp3");
  d_player = minim.loadFile("d.mp3");
  f_player = minim.loadFile("f.mp3");
  g_player = minim.loadFile("g.mp3");
  
  // loop everything
  a_player.loop();
  s_player.loop();
  d_player.loop();
  f_player.loop();
  g_player.loop();
  
  // start silent
  a_player.mute();
  s_player.mute();
  d_player.mute();
  f_player.mute();
  g_player.mute();
 
}

void draw(){
}

void keyPressed(){
  
 if (key == 'a') {
   if(a == false){
     a = true;
     a_player.unmute();
   }  
  }
  
  else if (key == 's') {
    if(s == false){
     s = true;
     s_player.unmute();
   }
  }
  
  else if (key == 'd') {
    if(d == false){
     d = true;
     d_player.unmute();
   }
  }
  
  else if (key == 'f') {
    if(f == false){
     f = true;
     f_player.unmute();
   }
  }
  
  else if (key == 'g') {
   if(g == false){
     g = true;
     g_player.unmute();
   }
  }
 
}

void keyReleased(){
  if (key == 'a') {
    if(a == true){
      a = false;
      a_player.mute();
    }
  }
  
  else if (key == 's') {
    if(s == true){
      s = false;
      s_player.mute();
    }
  }
  
  else if (key == 'd') {
    if(d == true){
      d = false;
      d_player.mute();
    }
  }
  
  else if (key == 'f') {
    if(f == true){
      f = false;
      f_player.mute();
    }
  }
  
  else if (key == 'g') {
    if(g == true){
      g = false;
      g_player.mute();
    }
  }
 
}
