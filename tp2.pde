//alumno: Martiniano Rodriguez
//Profesor: Tobias Albirosa
//link a video: https://youtu.be/WRAqWCK2P58

boolean reiniciar = false;
int cant = 15;
color c;

void setup() {
  size(800, 400);
  rectMode(RADIUS);
  ellipseMode(RADIUS);
  c = color(random(255), random(255), random(255)); // valores random de rgb
  fill(c);
  noStroke();
  cant = floor(random(15, 40));
 
}

void draw() {
  if (reiniciar) {
    reiniciar = false;  // Reinicia el estado de reinicio para evitar ciclos infinitos
    setup();  // Vuelve a llamar a la función setup() para reiniciar el programa
  }
  
  background(0);
  blendMode(DIFFERENCE);
  
  for (int i = 0; i <= cant; i++) {
     for (int j = 0; j < 1; j++) {  // Función for anidada
    int alto = height / cant / 2;
    float radioa = map(log(i), 0, log(cant), width / 2, 1);
    float radiob = map(i * i, 0, cant * cant, width / 2, 20);
    float radio = map(mouseY, 0, height, radioa, radiob);
    
      rect(width / 2 + j * 10, height / 2, width / 2, radio);
      ellipse(width / 2 + j * 10, height / 2, radio, radio);
    }
  }
}

void mousePressed() {
  setup();
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    reiniciar = true;  // Activa la señal de reinicio al presionar la tecla 'r' o 'R'
  }
}
