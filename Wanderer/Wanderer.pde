float x,y,velx,vely,accelx,accely,sz;
void setup(){
  size(800,800);
  x=width/2;
  y=height/2;
  velx= 0;
  vely= 0;
  sz=35;
}
void draw(){
  background(0);
  fill(random(255),random(255),random(255));
  

  accelx=random(-5,5);
  accely=random(-5,5);
  velx+= accelx;
  vely+= accely;
  x+=velx;
  y+=vely;
  ellipse(x,y,sz,sz);
 if(x > width + sz/2){
   x=-sz/2;
 }
 if(x < -sz/2){
  x = width + sz/2; 
 }
 if(y > height + sz/2){
   y= -sz/2;
 }
 if(y < -sz/2){
  y = height + sz/2; 
 }
 
}
