class bubble{
    float x, y, imgSize;
    PImage img;

    bubble(PImage image, float iS){
        x = random(width);
        y = random(height, 2*height);
        img = image;
        imgSize =  iS;
    }

    void display(){
      x += random(-2, 2);
      image(img, x, y, imgSize, imgSize);
    }

    void ascend(){
      if (y < 0){
        y = height;
      }else{
        y--;
      }
    }
}
