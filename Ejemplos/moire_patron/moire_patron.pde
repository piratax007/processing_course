int savedTime;
int totalTime = 3000;

void setup(){
  size(300, 300);
  background(200);
  noFill();
  strokeWeight(2);
  savedTime = millis();
}

void draw(){
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

void patron1(){
  for (int i = 0; i < width; i += 10){
    for (int j = 0; j < height; j += 10){
      rect(i, j, 10, 10);
    }
  }
}

void patron2(){
  translate(-60, 96);
  rotate(-PI / 6.0);
  for (int i = 0; i < width + 10; i += 10){
    for (int j = 0; j < height + 10; j += 10){
      rect(i, j, 10, 10);
    }
  }
}
