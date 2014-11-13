int x;
int y;
int sz;
int velx;
int vely; 
int accelx;
int accely;
void setup(){
  size(800,800);
  velx=400;
  vely=0;
  accelx=0;
  accely=1;
  sz=25;
  x = width/2;
}
void draw(){
  background(0);
  ellipse(x,y,sz,sz);
 //x+=velx;
 //velx+=accelx;
vely+=accely;
y+=vely;

if(y> height){ 
  y = height;
  vely=-abs(vely) ;
}
}
