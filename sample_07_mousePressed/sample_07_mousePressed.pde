// mouse Pressed

void setup() {
  size(512, 512);
}

void draw() {
  if (mousePressed == true) {
    fill(0);
  }
  else {
    fill(128);
  }
  
  rect(0, 0, width, height);
}
