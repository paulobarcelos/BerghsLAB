PShape[] myImageArray = new PShape[10];

PShape img;
PShape ask;
float number;

boolean start;



void setup() {
size(700, 700);

 for (int i=0; i<myImageArray.length; i++) {
    img = myImageArray[i] = loadShape(+ i + ".svg");
  }
  
  ask = loadShape("11.svg");

  /* myImageArray [0] = loadImage( "5.svg");
   myImageArray [1] = loadImage( "1.svg");
   myImageArray [2] = loadImage( "2.svg");
   myImageArray [3] = loadImage( "3.svg");
   myImageArray [4] = loadImage( "4.svg");
   myImageArray [5] = loadImage( "6.svg");
   myImageArray [6] = loadImage( "7.svg");
   myImageArray [7] = loadImage( "8.svg");
   myImageArray [8] = loadImage( "9.svg");
   myImageArray [9] = loadImage( "10.svg");   */
}

void draw() {
  background(250,200);
   if(keyPressed){
    if(key == ' '){
      start = true;
     number = random(10); 
    }
  }
  
  if(key == CODED){
    if(keyCode == DOWN){
      background(250,200);
     shape(ask, 0,0,width,height);
     start = false;
    }
  }
  
  if (start) {
  shape(myImageArray[(int)number], 0,0,width,height);
  }
  

}

