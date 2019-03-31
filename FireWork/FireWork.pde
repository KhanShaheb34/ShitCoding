Fireworks fire;

void setup() {
  fullScreen();
  smooth();
  fire = new Fireworks();
}

void draw() {
  background(50, 50, 50);
  fire.show();
}
