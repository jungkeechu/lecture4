// pmouseX, pmouseY

void setup() {
  size(500, 500);
  strokeWeight(8);
}

void draw() {
  background(128);
  line(mouseX, mouseY, pmouseX, pmouseY);
}
