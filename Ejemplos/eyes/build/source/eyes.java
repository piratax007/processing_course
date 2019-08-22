import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class eyes extends PApplet {

PImage eye;
float h = 223;
float k = 154;
float rO = 96;
float rI = 40;
float x1, x2, y1, y2;
float x11, x22, y11, y22;
float t = 1;

public void setup(){
  

  
  eye = loadImage("eye.png");
  stroke(75, 175, 255);
}

public void draw(){
  image(eye, 0, 0);
  if (millis() > t * 5000){
    stroke(random(255), random(255), random(255));
    t++;
  }

  for (int b = -200; b < 200; b += 20){
    strokeWeight(.75f);

    x1 = ((k + h - b) - sqrt(pow(b - h - k, 2) - 2 * (pow(h, 2) - pow(rO, 2) + pow(b - k, 2)))) / 2;
    x2 = ((k + h - b) + sqrt(pow(b - h - k, 2) - 2 * (pow(h, 2) - pow(rO, 2) + pow(b - k, 2)))) / 2;
    y1 = x1 + b;
    y2 = x2 + b;

    line(x1, y1, x2, y2);
    line(2 * h - x1, y1, 2 * h - x2, y2);
  }
}
  public void settings() {  size(450, 300);  smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "eyes" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
