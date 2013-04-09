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

// flags
boolean a = false;
boolean s = false;
boolean d = false;
boolean f = false;

PShape banana;
PShape body;
PShape hiphop;
PShape love;
PShape rock;
PShape vader;

void setup(){
  size(600, 610);
  smooth();
  
  banana = loadShape("banana.svg");
  body = banana.getChild("body");
  hiphop = banana.getChild("hiphop");
  love = banana.getChild("love");
  rock = banana.getChild("rock");
  vader = banana.getChild("vader");
  shapeMode(CENTER);
  
  
  
  // we pass this to Minim so that it can load files from the data directory
  minim = new Minim(this);

  // load the sound files
  a_player = minim.loadFile("miami.mp3");
  s_player = minim.loadFile("highway.mp3");
  d_player = minim.loadFile("sexual.mp3");
  f_player = minim.loadFile("starwars.mp3");
  
  // loop everything
  a_player.loop();
  s_player.loop();
  d_player.loop();
  f_player.loop();
  
  // start silent
  a_player.mute();
  s_player.mute();
  d_player.mute();
  f_player.mute();
 
}

void draw(){
  background(102);
  translate(width/2, height/2);
  
  float posX = random(10);
    if(f || s || a || d){
      background(frameCount*10%255, 255-frameCount*20%255, frameCount*2%255);
  }  
  if(!f && !s && !a && !d){
      shape(body, 0, 0);

  }
  else   shape(body, posX, posX);
  

  
  if(f) shape(vader,posX,posX);
  if(a) shape(hiphop,posX,posX);
  if(d) shape(love,posX,posX); 
  if(s) shape(rock,posX,posX);
}

void keyPressed(){
  if (key == CODED)
 if (keyCode == UP) {
   if(a == false){
     a = true;
     a_player.unmute();
     
   }  
  }
  
  else if (key == CODED)
    if (keyCode == DOWN) {
    if(s == false){
     s = true;
     s_player.unmute();
   }
  }
  
  else if (key == CODED)
 if (keyCode == LEFT) {
    if(d == false){
     d = true;
     d_player.unmute();
   }
  }
  
  else if (key == CODED)
 if (keyCode == RIGHT) {
    if(f == false){
     f = true;
     f_player.unmute();
   }
  }
  
 
}

void keyReleased(){
  if (key == CODED)
 if (keyCode == UP) {
    if(a == true){
      a = false;
      a_player.mute();
    }
  }
  
  else if (key == CODED)
    if (keyCode == DOWN) {
    if(s == true){
      s = false;
      s_player.mute();
    }
  }
  
  else if (key == CODED)
 if (keyCode == LEFT) {
    if(d == true){
      d = false;
      d_player.mute();
    }
  }
  
  else if (key == CODED)
 if (keyCode == RIGHT) {
    if(f == true){
      f = false;
      f_player.mute();
    }
  }
  
 
}
