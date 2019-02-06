/***************************************
Random Walker - from @shiffman
Mg. Fausto M. Lagos S.
@piratax007 - 2018
GNU GPLV3+
***************************************/

walker w1;
walker w2;

void setup(){
  size(300, 300);
  background(75);
  w1 = new walker();
  w2 = new walker(color(255, 0, 0));
}

void draw(){
  w1.display();
  w2.display();
  w1.walk();
  w2.walk();
}