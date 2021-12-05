// line drawing

void setup(){
  size(512, 256);
  background(255);
  stroke(128);
}


void draw(){
  background(255);
  for(int i=0; i<width; i++ ){
    stroke( abs(mouseX-i) ) ;
    line(i,0, i,height);
  }
}
