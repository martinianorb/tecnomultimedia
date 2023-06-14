// Alumno: Martiniano Rodriguez 
// Profesor: Tobias Albirosa
// Link a video:


PImage "op art.png";
int cant = 15;
color c;

 void setup(){
size(800,400);
rectMode(RADIUS);
ellipseMode(RADIUS);
 c=(color(random(255),random(255),random(255));
 fill(c);
 noStroke();
 cant= floor(random(15,40));
}

void draw(){
background(255);
 blendMode(DIFFERENCE);
for (int i =0 ; i<=cant; i++) {
int alto = height/cant/2;
float radioa =map (log(i), 0, log(cant), width/2, 1) ;
float radiob =map (i*i, 0, cant*cant, width/2, 20) ;
float radio =map (mouseY,0,height,radioa,radiob);

rect (width/2,height/2, width/2, radio);
 ellipse(width/2,height/2,radio,radio)
 }
}

void mousePressed(){
setup();
}
