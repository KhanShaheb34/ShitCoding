class Pipes {
  ArrayList<Pipe> pipes;
  int i = 0;
  
  Pipes() {
    pipes = new ArrayList<Pipe>();
  }
  
  void update(Bird bird) {
    if(i%75==0) {
      pipes.add(new Pipe());
      Score++;
    }
    i++;
    for(int j=pipes.size()-1; j>=0; j--) {
      pipes.get(j).update();
      pipes.get(j).show();
      
      if(pipes.get(j).posX < -20) {
        pipes.remove(j);
      }
      
      if(pipes.get(j).hits(bird)){
        bird.dead = true;
      }
    }
  }
}
