void setup(){
  size(900,650);
}

//Apotema
float apothem = 24/2*tan(25);

void draw(){
   for(int i=0;i<32;i++){
     if(i%2==0){
       for(int x=0;x<=450;x+=72){
         hexagon(36+x,600-i*20,24);
      } 
     }
     else{
       for(int x=0;x<=450;x+=72){
         hexagon(0+x,600-i*20,24);
     }
   }
   }
}


void hexagon(int x, float y, int radius){
  float sx=x+cos(5*PI/3)*radius;
  float sy=y;
  beginShape();
  vertex(sx,sy);
  for(float a=0; a<5*PI/3; a+=(TWO_PI/6)){
    sx = sx+ cos(a)*radius;
    sy = sy+ sin(a)*radius;
    vertex(sx,sy);
  }
  endShape(CLOSE);
}
