class Particle {
  PVector pos;
  PVector vel;
  PVector acc;
  PVector gravity;
  boolean exploded;
  float lifespan = 255;
  color c;
  
  Particle(float x, float y, boolean exploded, color c) {
    this.pos = new PVector(x, y);
    if(!exploded){
      this.vel = new PVector(0, -1 * random(12, 18));
      this.gravity = new PVector(0, 0.2);
    } else {
      this.vel = PVector.random2D();
      this.vel.mult(random(.5, 4));
      this.vel.mult(.3);
      this.gravity = new PVector(0, 0.03);
    }
    this.acc = new PVector(0, 0);
    this.exploded = exploded;
    this.c = c;
  }
  
  void applyForce(PVector force){
    acc.add(force);
  }
  
  void update() {
    pos.add(vel);
    vel.add(acc);
    acc.mult(0);
    applyForce(gravity);
  }
  
  void show() {
    if(!exploded){
      stroke(c);
      strokeWeight(5);
    } else {
      stroke(c, lifespan);
      strokeWeight(2);
      lifespan-=1;
    }
    point(pos.x, pos.y);
  }


}
