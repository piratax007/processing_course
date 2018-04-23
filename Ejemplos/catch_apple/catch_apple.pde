/* Ejemplo de definición de funciones
piratax007 - 2018
GPL v2

Prototipo del juego "Newton captura la manzana"
*/

float appleX; // Posición de la manzada
float appleY = 0;
float appleV = 0; // Velocidad inicial de la manzana
float appleA = .16; // Aceleración de la gravedad
float xNewton, yNewton; // Posición de Newton
float vNewton = 5.3; // Velocidad de desplazamiento de Newton
int p = 0; // puntuación

void setup() {
  size(300, 500);

  appleX = random(width);

  xNewton = width / 2 - 15;
  yNewton = height - 20;
}

void draw() {
  background(75);

  appleDisplay(12);
  appleMove(12);
  Newton(xNewton, yNewton);
  NewtonMove(vNewton);
  score();
}

void appleDisplay(float r) {
  fill(255, 50, 0);
  noStroke();
  ellipse(appleX, appleY, 2 * r, 2 * r);
}

void appleMove(float r) {
  appleV += appleA;
  appleY += appleV;

  if (appleY > height) {
    appleY = -r;
    appleV = 0;
    appleX = random(r, width - r);
  }
}

void Newton(float x, float y) {
  rectMode(CENTER);
  fill(100, 255, 50);
  rect(x, y, 30, 40);
}

void NewtonMove(float v) {
  if (keyPressed) {
    if (keyCode == RIGHT) {
      xNewton += v;
    } else if (keyCode == LEFT) {
      xNewton -= v;
    }
  }

  if (xNewton < 0) {
    xNewton = width;
  } else if (xNewton > width) {
    xNewton = 0;
  }
}

void score(){
  if (appleX > xNewton - 15 && appleX < xNewton + 15 && appleY > height - 40){
    p += 5;
  }else if (appleY > height - 40){
    p -= 5;
  }
  
  rectMode(CORNER);
  fill(255, 100, 50);
  rect(0, height - p, 10, p);
}