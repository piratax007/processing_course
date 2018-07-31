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

public class pelotasLocas_AL extends PApplet {

ArrayList<pelotaLoca> bubbles = new ArrayList<pelotaLoca>();

public void setup(){
  
}

public void draw(){
  background(75);
  for (int i = 0; i < bubbles.size() - 2; i++){
    bubbles.get(i).dibujar();
    bubbles.get(i).mover();
    for (int j = 0; j < bubbles.size() - 2; j++){
      if (i != j && bubbles.get(j).colisionar(bubbles.get(i), bubbles.get(j))){
        bubbles.remove(bubbles.get(i));
        bubbles.remove(bubbles.get(j));
      }
    }
  }
}

public void mousePressed(){
  bubbles.add(new pelotaLoca());
}
class pelotaLoca{
  float h, k, r;
  int relleno;
  float vX, vY;
  
  pelotaLoca(){
    r = random(10, 15);
    h = random(r, width - r);
    k = random(r, height - r);
    relleno = color(random(255), random(255), random(255));
    vX = random(3, 5);
    vY = random(3, 5);
  }
  
  pelotaLoca(float Radio, int Color){
    r = Radio;
    h = random(r, width - r);
    k = random(r, height - r);
    relleno = Color;
    vX = random(3, 5);
    vY = random(3, 5);
  }
  
  public void dibujar(){
    fill(relleno);
    ellipse(h, k, 2 * r, 2 * r);
  }
  
  public void mover(){
    h += vX;
    k += vY;
    
    if (h < r || h > width - r){
      vX *= -1;
    }
    
    if (k < r || k > height - r){
      vY *= -1;
    }
  }
  
  public boolean colisionar(pelotaLoca P1, pelotaLoca P2){
    float vXP1 = P1.vX;
    float vYP1 = P1.vY;
    float vXP2 = P2.vX;
    float vYP2 = P2.vY;
    
    if (dist(P1.h, P1.k, P2.h, P2.k) < P1.r + P2.r){
      P1.vX = vXP2;
      P1.vY = vYP2;
      P2.vX = vXP1;
      P2.vY = vYP1;
      return true;
    }else{
      return false;
    }
  }
}
  public void settings() {  size(400, 400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "pelotasLocas_AL" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
