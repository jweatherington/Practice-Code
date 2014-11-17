float locx, locy;
float velx, vely;
float accx, accy;
int sz= 50;
void setup (){
  size (500,800);
  locx= width/2 ;
  locy= height/2;
  velx= random (-1, 1);
  vely= random (-1,1);
  accx= 0.01;
  accy= 0.005;
  colorMode(HSB,100,100,100,100);
}
void draw (){
  velx+=accx;
  vely+=accy;
  locx+=velx;
  locy+=vely;
  fill (frameCount%360,100,100);
  ellipse (locx, locy, sz,sz);
  
  if (locx-sz/2>width) {
    locx= -sz/2;
  }
  if (locx+sz/2< 0){
    locx=width+sz/2;
  }
  if (locy-sz/2>height){
    locy=-sz/2;
  }
  if (locy+sz/2<0){
    locy=height+sz/2;
  }
}
