/* REBOTA
Mg. Fausto M. Lagos S.
CC By-NC-SA 2018

Evita que la elipse toque los bordes del lienzo haciendo click dentro
de la elipse para que cambie de dirección
*/

float x, y; // Coordenadas del centro de la elipse
float velX, velY;  // Velocidades
float radio = 35;

void setup(){
  size(500, 500);
  
  x = random(radio, width - radio);
  y = random(radio, height - radio);
  
  velX = random(-2, 2);
  velY = random(-2, 2);
  
  stroke(255);
}

void draw(){
  background(75);
  
  if (x - radio < 0 || x + radio > width){
    background(255, 0, 0);
    if (radio > 0){
      radio -= 2;
    }else{
      radio = 0;
    }
    velX = -velX;
  }
  
  if (y - radio < 0 || y + radio > height){
    background(255, 0, 0);
    if (radio > 0){
      radio -= 2;
    }else{
      radio = 0;
    }
    velY = -velY;
  }
  
  ellipse(x, y, 2 * radio, 2 * radio);
  
  x += velX;
  y += velY;
}

void mousePressed(){
  if (dist(x, y, mouseX, mouseY) < radio){
    velX = random(-2, 2);
    velY = random(-2, 2);
    radio++;
  }
}