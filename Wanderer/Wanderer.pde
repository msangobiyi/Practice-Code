PVector loc;
PVector vel;
PVector acc;
int sz= 35;
void setup(){
  size(800,800);
 
}
void draw(){
  loc= new PVector(width/2,height/2);
  
  vel= new PVector(0,0);
  
  acc= new PVector(random(-.1,.1),random(-.1,.1));
  
  fill(random(255),random(255),random(255));
  
  vel.add(acc);
  vel.limit(10);
  ellipse(loc.x,loc.y,sz,sz);
  loc.x add 
 if(loc.x -sz/2> width){
   loc.x=-sz/2;
 }
 if(loc.x+sz/2<0){
  loc.x = width + sz/2; 
 }
 if(loc.y- sz/2>height){
   loc.y= -sz/2;
 }
 if(loc.y +sz/2<0){
  loc.y = height + sz/2; 
 }
 
}
