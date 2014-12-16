class leaves {
  PVector loc, vel, gravity;
  float sz;
  float speed;
  leaves(float tempsz, float tempspeed){
   sz= tempsz;
   speed= tempspeed;
  loc= new PVector(width/2,  height*.1);
vel= PVector.random2D();
gravity= new PVector(0,5);
vel.setMag(speed);
  }
  void display() { //gives ball life(makes visible)//
fill(0,155,0);
ellipse(loc.x,loc.y,sz,sz);
  }
  void move(){//teaches the ball how to walk (makes ball move)
    vel.add(gravity);
    loc.add(vel);
  }
  void ground(){
    if (loc.y + sz/2 > height) {  
    loc.y = height - sz/2;
    vel.x *= .9;       
    vel.y *= -.7;       
  }
  }
}
