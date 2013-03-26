// will store the amount of liquid
int amount = 0;

void setup(){
  size(500, 500);
  
  // Draw the backgorund only once...
  background(255,255,255);
}

void draw(){
 
  if(keyPressed){
    if(key == ' '){
      amount++; // "amount++" is the same as "amount = amount + 1";
    }
  }
  
  // Draw the liquid with a translucent blue color.
  // The "accumulation" of the color will give a 
  // soft fade effect
  noStroke();
  fill(0, 0, 255, 5);
  
  rect(0, 500 - amount, 500, amount);
}
