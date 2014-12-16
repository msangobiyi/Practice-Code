
leaves[] balls = new leaves[150];

void setup() {
  size(800, 800);
  colorMode(HSB, 360, 100, 100, 100);
  
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new leaves(random(5, 20), random(.01, 5));
  }
}

void draw() {
  background(0, 0, 100);


  for (int i = 0; i < balls.length; i++) {

    balls[i].display();
    balls[i].move();
    balls[i].ground();
  }

}

