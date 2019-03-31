class Fireworks {
  ArrayList<Particle> fireworks;
  color cols[] = {#f5c81f, #2ecc71, #1abc9c, #9b59b6, #ecf0f1, #e74c3c, #e74c3c, #e74c3c, #f1c40f, #f1c40f};

  Fireworks(){
    fireworks = new ArrayList<Particle>();
  }
  
  void show(){
    if(random(1)<0.05){
      fireworks.add(new Particle(random(0, width), height, false, cols[int(random(10))]));
    }
    for(int i=fireworks.size()-1; i>=0; i--) {
      fireworks.get(i).update();
      fireworks.get(i).show();
      
      if(fireworks.get(i).vel.y >= -3 && !fireworks.get(i).exploded) {
        for(int j=0; j<150; j++){
          fireworks.add(new Particle(fireworks.get(i).pos.x, fireworks.get(i).pos.y, true, fireworks.get(i).c));
        }
        fireworks.remove(i);
      }
      
      if(fireworks.get(i).lifespan<=0){
        fireworks.remove(i);
      }
    }
  }

}
