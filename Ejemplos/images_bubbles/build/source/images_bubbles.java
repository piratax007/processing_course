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

public class images_bubbles extends PApplet {

PImage[] bubblesImages = new PImage[3];
bubble[] bubbles = new bubble[100];

public void setup(){
  

  for (int i = 0; i < bubblesImages.length; i++){
    bubblesImages[i] = loadImage("bubble"+i+".png");
  }

  for (int i = 0; i < bubbles.length; i++){
    bubbles[i] = new bubble(bubblesImages[PApplet.parseInt(random(3))], random(10, 20));
  }
}

public void draw(){
  background(0xff1A6A99);
  for (int i = 0; i < bubbles.length; i++){
    bubbles[i].display();
    bubbles[i].ascend();
  }
}
class bubble{
    float x, y, imgSize;
    PImage img;

    bubble(PImage image, float iS){
        x = random(width);
        y = random(height, 2*height);
        img = image;
        imgSize =  iS;
    }

    public void display(){
      x += random(-2, 2);
      image(img, x, y, imgSize, imgSize);
    }

    public void ascend(){
      if (y < 0){
        y = height;
      }else{
        y--;
      }
    }
}
  public void settings() {  size(350, 500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "images_bubbles" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
