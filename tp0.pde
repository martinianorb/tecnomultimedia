
PImage martillo;

 void setup(){
 size(800,400);
 background(255);
 textSize(15);
martillo= loadImage("martillohamilton.jpeg");
 }
 
void draw(){
  fill(236,124,38);
  rect(300,130,50,200);
  
  fill(0);
  rect(300,250,50,150);
  
  fill(227,228,229);
  rect(222,55,200,95,20);
  fill(0);
  text("HAMILTON",288,105);
  
  noFill();
  stroke(138,149,151);
  rect(310,280,30,95,10);
  
  noFill();
  stroke(138,149,151);
  rect(310,300,30,20,10);
  
 image(martillo,500,10);

 }
 
