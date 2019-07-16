/**********************************
PixelArt
MSc. Fausto M. Lagos S
@piratax007 - 2019
GPL V3+
**********************************/

// Configuración general
colorMode(RGB, 100);
strokeWeight(1);
stroke(75);
fill(#FAA535);
background(25);
size(150, 120);

// Diseño
square(20, 10, 10);
square(120, 10, 10);
square(10, 20, 10);
square(20, 20, 10);
square(120, 20, 10);
square(130, 20, 10);
square(30, 30, 10);
square(110, 30, 10);
rect(50, 30, 50, 20);
rect(40, 40, 10, 40);
rect(100, 40, 10, 40);
square(70, 50, 10);
rect(60, 60, 30, 10);
rect(50, 70, 50, 20);
square(30, 80, 10);
square(110, 80, 10);
rect(10, 90, 20, 10);
square(50, 90, 10);
square(70, 90, 10);
square(90, 90, 10);
rect(120, 90, 20, 10);
square(20, 100, 10);
square(120, 100, 10);

// Cuadricula
for (int i = 0; i < width; i += 10){
  line(i, 0, i, height);
}

for (int i = 0; i < height; i += 10){
  line(0, i, width, i);
}
