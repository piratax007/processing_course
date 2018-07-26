class bubble{
    float x, y;
    
    bubble(){
        x = width / 2;
        y = height;
    }
    
    void display(){
        ellipse(x, y, 50, 50);
    }
    
    void ascend(){
        y--;
    }
}