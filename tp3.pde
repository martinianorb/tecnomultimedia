PImage[] imagenes;
String[] textos;
int index;

void setup() {
  size(800, 600);
  
  imagenes = new PImage[3];
  imagenes[0] = loadImage("imagen1.jpg");
  imagenes[1] = loadImage("imagen2.jpg");
  imagenes[2] = loadImage("imagen3.jpg");
  
  textos = new String[3];
  textos[0] = "Texto 1";
  textos[1] = "Texto 2";
  textos[2] = "Texto 3";
  
  index = 0;
}

void draw() {
  background(0);
  
  // Mostrar la imagen actual
  image(imagenes[index], 0, 0, width, height);
  
  // Mostrar el texto actual
  fill(255);
  textSize(24);
  textAlign(CENTER, CENTER);
  text(textos[index], width/2, height/2);
}

void mousePressed() {
  // Cambiar a la siguiente diapositiva al hacer clic en el mouse
  index = (index + 1) % 3;
}
