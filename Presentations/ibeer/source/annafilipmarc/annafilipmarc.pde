PImage img;
PImage img2;
float amount = 0;

void setup(){
size(1440, 900);
  
img = loadImage("bg.jpg");
img2 = loadImage("isak.png");

image(img, 0, 0);
 
}

void draw(){
  
   if(keyPressed){
    if(key == ' '){
      amount = amount + 4;
    }
  }
  
noStroke();
fill(250, 255, 16, 5);
                
rect(0, 1150 - amount, 1440, amount);
  
noStroke();
fill(250, 255, 16, 5);  
                                                                        
rect(325, 527      , 7, amount);

image(img2, 0, 0);
 
}
