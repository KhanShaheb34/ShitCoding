Bird bird;
Pipes pipes;
int Score = -5;

void setup() {
  size(1000, 600);
  smooth();
  pipes = new Pipes();
  bird = new Bird();
  Score = 0;
}

void draw() {
  background(50, 50, 50);
  pipes.update(bird);
  bird.update();
  bird.show();
  if(Score >= 0) print(Score + "\n");
}

void keyPressed(){
  if(key == ' ') {
    bird.fly();
  }
}
