class pelotaLoca{
  float h, k, r;
  color relleno;
  float vX, vY;
  
  pelotaLoca(){
    r = random(10, 15);
    h = random(r, width - r);
    k = random(r, height - r);
    relleno = color(random(255), random(255), random(255));
    vX = random(3, 5);
    vY = random(3, 5);
  }
  
  pelotaLoca(float Radio, color Color){
    r = Radio;
    h = random(r, width - r);
    k = random(r, height - r);
    relleno = Color;
    vX = random(3, 5);
    vY = random(3, 5);
  }
  
  void dibujar(){
    fill(relleno);
    ellipse(h, k, 2 * r, 2 * r);
  }
  
  void mover(){
    h += vX;
    k += vY;
    
    if (h < r || h > width - r){
      vX *= -1;
    }
    
    if (k < r || k > height - r){
      vY *= -1;
    }
  }
  
  boolean colisionar(pelotaLoca P1, pelotaLoca P2){
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