class Pipe {
  float top;
  float bottom;
  float wid;
  float posX;
  
  Pipe() {
    top = random(height/2);
    bottom = random(height/2);
    while(top-bottom>300 || top-bottom<100){
      top = random(height/2);
      bottom = random(height/2);
    }
    wid = 20;
    posX = width;
  }
  
  void update() {
    posX-=3;
  }
  
  boolean hits(Bird bird) {
    if(bird.y<top || bird.y>height-bottom) {
      if(posX<=64+16 && posX>=64-16) {
        return true;
      }
    }
    return false;
  }
  
  void show() {
    fill(0, 255, 0);
    rect(posX, 0, wid, top);
    rect(posX, height-bottom, wid, bottom);
  }
  
  
  
}
