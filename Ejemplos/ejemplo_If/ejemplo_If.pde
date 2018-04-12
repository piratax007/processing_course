/* Ejemplo if
Mg. Fausto M. Lagos S
CC By-NC-SA 4.0

Una elipse se mueve horizontalmente y rebota en los bordes del lienzo
*/

boolean state = true;
int x = 35;
int r = 35;

void setup(){
  size(700, 300);
}

void draw(){
  background(75);
  if (state){
    x++;
  }else {
    x--;
  }
  ellipse(x, height / 2, 2 * r, 2 * r);
  if (x + r > width || x - r < 0){
    state = !state;
  }
}