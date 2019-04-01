class Bird {
  float y;
  float vel;
  float gravity;
  float force;
  boolean dead = false;
  
  Bird() {
    y = height/2;
    vel = 0;
    gravity = .3;
    force = 15;
  }
  
  void fly() {
      vel = -8;
  }
  
  void update() {
    if(!dead) {
      y += vel;
      vel += gravity;
    }
    
    if(y >= height || y<=0) {
      dead=true;
    }
  }
  
  void show() {
    if(!dead) fill(#FBD771);
    else fill(255, 0, 0);
    ellipse(64, y, 32, 32);
    fill(0);
    ellipse(64-6, y-4, 2, 2);
    ellipse(64+6, y-4, 2, 2);
    arc(64, y+2, 18, 18, 0, PI);
  }
}
