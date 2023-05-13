PImage img1, img2, img3;
int currentImage = 1;
int imageTime = 0; 
boolean isDone = false;


class AnimatedText {
  float x, y;
  float speed; 
  String text; 

  AnimatedText(float x, float y, float speed, String text) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.text = text;
  }


  void update() {
    y += speed;
  }


  void display() {
    PFont font = createFont("arial", 32); // fuente
    textFont(font);
    textSize(32);
    fill(0);
    text(text, x, y);
  }
}


AnimatedText[] text1;
AnimatedText[] text2;
AnimatedText[] text3;

void setup() {
  size(640, 480);
  img1 = loadImage("martillo en obra.jpg");
  img2 = loadImage("tipos de martillo.jpg");
  img3 = loadImage("uso de martillo .jpg");

  
 
  text1 = new AnimatedText[] {
    new AnimatedText(300, -50, 3, "Martillo en obra")
  };
  text2 = new AnimatedText[] {
    new AnimatedText(300, -50, 3, "tipos de martillo")
  };
  text3 = new AnimatedText[] {
    new AnimatedText(300, -50, 3, "uso de martillo")
  };
}

void draw() {
  background(0);

  if (!isDone) {
    if (currentImage == 1) {
      image(img1, 0, 0,640,480);
      for (AnimatedText t : text1) {
        t.update(); 
        t.display();
      }
    } else if (currentImage == 2) {
      image(img2, 0, 0,640,480);
      for (AnimatedText t : text2) {
        t.update();
        t.display();
      }
    } else if (currentImage == 3) {
      image(img3,0, 0,640,480);
      for (AnimatedText t : text3) {
        t.update();
        t.display();
      }
    }
    
  
    if (millis() - imageTime > 3000) {
      currentImage++;
      imageTime = millis();
      
      if (currentImage > 3) {
        isDone = true;
      }
    }
    
  } else {
   
    background(255);
    textSize(32);
    textAlign(CENTER, CENTER);
    fill(0);
    text("boton de reinicio", width/2, height/2);
    
    // Dibujar el botón de reinicio
    rectMode(CENTER);
    fill(200);
    rect(width/2, height/2 + 50, 150, 50, 10);
    textSize(20);
    textAlign(CENTER, CENTER);
    fill(0);
    text("Reiniciar", width/2, height/2 + 50);
    
  
    for (AnimatedText t : text1) {
      t.y = -50;
    }
    for (AnimatedText t : text2) {
      t.y = -50;
    }
    for (AnimatedText t : text3) {
      t.y = -50;
    }
  }
}
void mousePressed() {

  if (mouseX > width/2 - 75 && mouseX < width/2 + 75 && mouseY > height/2 + 25 && mouseY < height/2 + 75 && isDone) {
  
    currentImage = 1;
    imageTime = millis();
    isDone = false;
  }
}
