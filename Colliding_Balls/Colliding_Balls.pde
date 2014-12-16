Ball b;

void setup() {
  size(800, 600);
  for (int i = 0; i < count; i++) {   
    sz[i] = random(minDiam, maxDiam);
    loc[i] = new PVector(random(sz[i], width-sz[i]), random(sz[i], height-sz[i])); 
    vel[i] = PVector.random2D();       
    acc[i] = new PVector(0, 0);      
    mass[i] = map(sz[i], minDiam, maxDiam, .1, 1.5);
  }
    b[i] = new Ball(); 
}

void draw() {
  background(0);

  b[i].move();
  b[i].bounce();
  b[i].display();
}

class Ball {

  float sz;
  PVector loc, vel;

  Ball() {
    sz = 50;
    loc = new PVector(width/2, height/2);
    vel = PVector.random2D();
  }

  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    loc.add(vel);
  }

  void bounce() {
    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
      vel.x *= -1;
    }
    if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
      vel.y *= -1;
    }
  }
  for (int i = 0; i < count; i++) {   
    vel[i].add(acc[i]);
    loc[i].add(vel[i]);


    for (int j = 0; j < count; j++) {
      if (i!=j) {
        if (loc[i].dist(loc[j]) < sz[i]/2 + sz[j]/2) { 



          vel[i] = PVector.sub(loc[i], loc[j]);     
          vel[i].normalize();                        
          vel[i].div(mass[i]);
        }
      }
    }


    ellipse(loc[i].x, loc[i].y, sz[i], sz[i]);


    if (loc[i].x + sz[i]/2 > width || loc[i].x - sz[i]/2 < 0) {
      vel[i].x *= -1;
    }
    if (loc[i].y + sz[i]/2 > height || loc[i].y - sz[i]/2 < 0) {
      vel[i].y *= -1;
    }
  }
}


