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

public class monker_illusion extends PApplet {

public void setup(){
  
  noStroke();
  colorMode(HSB, 100);
}

public void draw(){
  background(100);

  fill(0);
  for (int i = 0; i < height; i += 50){
    rect(mouseX, i + 25, 600, 25);
  }

  fill(0, 0, 50);
  for (int i = 0; i < height; i += 50){
    rect(100, i + 25, 150, 25);
  }

  for (int i = 0; i < height; i += 50){
    rect(300, i, 150, 25);
  }
}
  public void settings() {  size(600, 300); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "monker_illusion" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
