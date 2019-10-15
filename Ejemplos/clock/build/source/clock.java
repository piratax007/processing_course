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

public class clock extends PApplet {

public void setup() {
  

  noStroke();
  textSize(12);
  textAlign(CENTER);
}

public void draw(){
  background(75);

  fill(175, 80, 225);
  arc(width / 2, height / 2, 250, 250, -HALF_PI, radians(map(hour(), 0, 24, 0, 360)) - HALF_PI, PIE);
  fill(255);
  text("0", width / 2, 20);
  text("6", width - 20, height / 2);
  text("12", width / 2, height - 14);
  text("18", 14, height / 2);

  fill(225, 175, 80);
  arc(width / 2, height / 2, 175, 175, -HALF_PI, radians(map(minute(), 0, 59, 0, 360)) - HALF_PI, PIE);
  text("0", width / 2, 57.2f);
  text("15", width - 57.2f, height / 2);
  text("30", width / 2, height - 51.2f);
  text("45", 51.2f, height / 2);

  fill(80, 225, 175);
  arc(width / 2, height / 2, 100, 100, -HALF_PI, radians(map(second(), 0, 59, 0, 360)) - HALF_PI, PIE);
}
  public void settings() {  size(300, 300); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "clock" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
