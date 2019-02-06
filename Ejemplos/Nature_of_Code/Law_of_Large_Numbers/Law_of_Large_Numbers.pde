/*********************************
Law of large numbers v1.0
Mg. Fausto M. Lagos S.
@piratax007 - 2018
GNU GPL V3.0+
*********************************/

coin moneda;
int timer = millis();
int counterPush = 0;
int counterCara = 0;
int counterCruz = 0;
int x = 305;
int n = 1;

void setup() {
  size(700, 300);
  background(255);
  moneda = new coin(100, 50);
  textSize(32);
  textAlign(CENTER);
}

void draw() {
  fill(75);
  noStroke();
  rect(0, 0, 300, height);
  strokeWeight(2);
  stroke(0);
  line(300, height / 2, width, height / 2);

  moneda.display();
  if (millis() > timer + 500) {
    if (moneda.flip() == 0) {
      counterCara++;
    } else {
      counterCruz++;
    }

    counterPush++;

    timer = millis();
  }
  
  if (counterPush > 9) {
    successCount(counterCruz, 10 * n, x);
    x += 10;
    counterPush = 0;
    n++;
  }

  fill(#2669D1);
  text("CARA", 75, 200);
  text("CRUZ", 225, 200);
  text(counterCara, 75, 250);
  text(counterCruz, 225, 250);
}

void successCount(float E, float I, int position){
  float Pe = map(E / I, 0, 1, height - 15, 15);
  
  if (E / I > 0.49 && E / I < 0.51){
    fill(#16D306);
  }else{
    fill(#E81C42);
  }
  
  ellipse(position, Pe, 5, 5);
}