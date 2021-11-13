float x;
float y;
float easing = 0.02;

void setup() {
  size(512, 256); 
  noStroke();  
}

void draw() { 
  background(128);
  
  float targetX = mouseX;
  float dx = targetX - x;
  x += dx * easing;
  
  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;
  
  ellipse(x, y, 100, 100);
}
