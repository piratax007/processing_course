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

public class moire_Pattron2 extends PApplet {

public void setup() {
  
}

public void draw(){
  background(175);

  pattron(color(213, 186, 26), 20);

  translate(200, 0);
  pattron(color(120, 187, 242), 20);

  translate(0, 200);
  pattron(color(246, 162, 230), 20);

  translate(-200, 0);
  pattron(color(120, 242, 143), 20);
}

public void pattron(int colour, int separation){
  stroke(colour);
  for (int i = separation; i <= width / 2; i += separation){
    line(0, i, i, 0);
    line(i, height / 2, width / 2, i);
    line(0, height / 2 - i, i, height / 2);
    line(i, 0, width / 2, height / 2 - i);
  }
}
  public void settings() {  size(400, 400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "moire_Pattron2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
