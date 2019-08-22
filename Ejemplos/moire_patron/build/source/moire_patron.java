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

public class moire_patron extends PApplet {

int savedTime;
int totalTime = 3000;

public void setup(){
  
  background(200);
  noFill();
  strokeWeight(2);
  savedTime = millis();
}

public void draw(){
  background(250);

  int passedTime = millis() - savedTime;

  if (passedTime < totalTime){
    patron1();
  }else if (passedTime > totalTime && passedTime < 2 * totalTime){
    patron2();
  }else if (passedTime > 2 * totalTime && passedTime < 5 * totalTime){
    patron1();
    patron2();
  }else{
    savedTime = millis();
  }
}

public void patron1(){
  for (int i = 0; i < width; i += 10){
    for (int j = 0; j < height; j += 10){
      rect(i, j, 10, 10);
    }
  }
}

public void patron2(){
  translate(-60, 96);
  rotate(-PI / 6.0f);
  for (int i = 0; i < width + 10; i += 10){
    for (int j = 0; j < height + 10; j += 10){
      rect(i, j, 10, 10);
    }
  }
}
  public void settings() {  size(300, 300); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "moire_patron" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
