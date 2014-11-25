int count=100;
PVector[] loc= new PVector[count];
PVector[] vel= new PVector[count];
PVector[] acc= new PVector[count];
float sz[] =new float[count] ;

void setup() {
  size(800, 800);
  for(int =0; i<count; i++){
  loc[i]= new PVector(width/2, height/2);
  vel[i]= PVector.random2D();
  acc[i]= new PVector (0, 0);
  sz[i]= random(1mv
  0,80);
  
  sz=100;
  
}
void draw() {
  background(255, 255, 255);
  ellipse(loc.x, loc.y, sz, sz);
  
  mouse.set(mouseX, mouseY);

  vel.add(acc);
  loc.add(vel);




  if (loc.dist(loc2) < sz/2 + sz2/2) {
    if (loc.x< loc2.x) {
      vel.x= -abs(vel.x);
    } else {
      vel.x= abs(vel.x);
    }
    if (loc.y<loc2.y) {
      vel.y=-abs(vel.y);
    } else {
      vel.y=abs(vel.y);
    }
  }
  if (loc.x+sz/2> width || loc.x- sz/2 <0) {
    vel.x*=-1;
  }
  if (loc.y+sz/2> height || loc.y- sz/2<0) {
    vel.y*=-1;
  }
  if (loc2.x+sz2/2> width || loc2.x-sz2/2 <0) {
    vel2.x*=-1;
  }
  if (loc2.y+sz2/2> height || loc2.y-sz2/2<0) {
    vel2.y*=-1;
  }
}

