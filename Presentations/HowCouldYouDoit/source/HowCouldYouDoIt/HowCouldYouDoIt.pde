 PShape Rabbit;
 PShape Head;
 PShape Body;
 PShape LeftArm;
 PShape RightArm;
 PShape LeftLeg;
 PShape RightLeg;
 PShape Rabbit2;
 PShape Head2;
 PShape Body2;
 PShape LeftArm2;
 PShape RightArm2;
 PShape LeftLeg2;
 PShape RightLeg2;
 PImage Death;
 int amount = 0;
 int RightEyeX = 203;   
 int RightEyeY = 260;
 int LeftEyeX = 260;
 int LeftEyeY = 252;
 int Alpha;
 boolean Blood = false ;

 
 
 
void setup() {
size(500,500);
Death = loadImage("Death.png");
Rabbit = loadShape("Rabbit1.svg");
Head = Rabbit.getChild("Head"); //a
Body = Rabbit.getChild("Body"); //s
LeftArm = Rabbit.getChild("LeftArm"); //d
RightArm = Rabbit.getChild("RightArm"); //f
LeftLeg = Rabbit.getChild("LeftLeg"); //g
RightLeg = Rabbit.getChild("RightLeg"); //w
Rabbit2 = loadShape("Rabbit2.svg");
Head2 = Rabbit2.getChild("Head"); //a
Body2 = Rabbit2.getChild("Body"); //s
LeftArm2 = Rabbit2.getChild("LeftArm"); //d
RightArm2 = Rabbit2.getChild("RightArm"); //f
LeftLeg2 = Rabbit2.getChild("LeftLeg"); //g
RightLeg2 = Rabbit2.getChild("RightLeg"); //w
background (255,255,255);


}

void draw() {
  if (Blood == false ) {
  shape(Rabbit);
  
  // ögon "vitor"
fill(255, 255, 255); 
ellipse(202, 260, 8, 8);
ellipse(260, 250, 8, 8);

// ögon följer
fill(0,0,0);
ellipse(LeftEyeX , LeftEyeY, 2, 2);
ellipse(RightEyeX , RightEyeY, 2, 2);

// munnen
fill(0,0,0); 
ellipse(228, 281, 13, random(1,8));
  
  if (keyPressed) {
    if (key == 'a' ) {
    shape(Head2);
    amount++;
    RightEyeX = 203;
    RightEyeY = 260;
    LeftEyeX = 260;
    LeftEyeY = 252;
    fill(255, 255, 255); 
    ellipse(202, 260, 10, 10);
    ellipse(260, 250, 10, 10);
    fill(0,0,0);
    ellipse(LeftEyeX , LeftEyeY, 2, 2);
    ellipse(RightEyeX , RightEyeY, 2, 2);
    fill(0,0,0); 
    ellipse(228, 281, 13, 8);
    } else {
    shape(Head);
    }
    if (key == 's' ) {
    shape(Body2);
    amount++;
    RightEyeX = 206;
    RightEyeY = 266;
    LeftEyeX = 262;
    LeftEyeY = 257;
    fill(255, 255, 255); 
    ellipse(202, 260, 10, 10);
    ellipse(260, 250, 10, 10);
    fill(0,0,0);
    ellipse(LeftEyeX , LeftEyeY, 2, 2);
    ellipse(RightEyeX , RightEyeY, 2, 2);
    fill(0,0,0); 
    ellipse(228, 281, 13, 8);
    } else {
    shape(Body);
    }
    if (key == 'd' ) {
    shape(LeftArm2);
    amount++;
    RightEyeX = 200;
    RightEyeY = 266;
    LeftEyeX = 256;
    LeftEyeY = 253;
    fill(255, 255, 255); 
    ellipse(202, 260, 10, 10);
    ellipse(260, 250, 10, 10);
    fill(0,0,0);
    ellipse(LeftEyeX , LeftEyeY, 2, 2);
    ellipse(RightEyeX , RightEyeY, 2, 2);
    fill(0,0,0); 
    ellipse(228, 281, 13, 8);
    } else {
    shape(LeftArm);
    }
    if (key == 'f' ) {
    shape(RightArm2);
    amount++;
    RightEyeX = 207;
    RightEyeY = 264;
    LeftEyeX = 267;
    LeftEyeY = 254;
    fill(255, 255, 255); 
    ellipse(202, 260, 10, 10);
    ellipse(260, 250, 10, 10);
    fill(0,0,0);
    ellipse(LeftEyeX , LeftEyeY, 2, 2);
    ellipse(RightEyeX , RightEyeY, 2, 2);
    fill(0,0,0); 
    ellipse(228, 281, 13, 8);
    } else {
    shape(RightArm);
    }
    if (key == 'g' ) {
    shape(LeftLeg2);
    amount++;
    RightEyeX = 203;
    RightEyeY = 267;
    LeftEyeX = 259;
    LeftEyeY = 256;
    fill(255, 255, 255); 
    ellipse(202, 260, 10, 10);
    ellipse(260, 250, 10, 10);
    fill(0,0,0);
    ellipse(LeftEyeX , LeftEyeY, 2, 2);
    ellipse(RightEyeX , RightEyeY, 2, 2);
    fill(0,0,0); 
    ellipse(228, 281, 13, 8);
    } else {
    shape(LeftLeg);
    }
    if (key == 'w' ) {
    shape(RightLeg2);
    amount++;
    RightEyeX = 267;
    RightEyeY = 255;
    LeftEyeX = 207;
    LeftEyeY = 266;
    fill(255, 255, 255); 
    ellipse(202, 260, 10, 10);
    ellipse(260, 250, 10, 10);
    fill(0,0,0);
    ellipse(LeftEyeX , LeftEyeY, 2, 2);
    ellipse(RightEyeX , RightEyeY, 2, 2);
    fill(0,0,0); 
    ellipse(228, 281, 13, 8);
    } else {
    shape(RightLeg);
    }
    
    
    
    
  }
  
  
  }
  
  
  // Bloooooooooooood!!!
 if (amount > 370) {
    
   Blood = true;   
       if (frameCount%50 == 0) {
       imageMode(CENTER);
       tint(255, Alpha);      
       image(Death, 250,250);
       Alpha = Alpha + 10 ; 
       if (Alpha > 130) {
       textMode(CENTER);  
       textSize(32);
       fill(0);
       text("How could you do it?", 100, 430);  
       }
}
   
  } else {
noStroke();
  fill(255, 0, 0, 5);
  
  ellipseMode(RADIUS);
  ellipse(240,240,amount,amount);
  
  
}

//print("X:  ");
//print(mouseX); 
//print("Y:   ");
//print(mouseY);
//print(" Alpha: ");
//print(Alpha);



}

