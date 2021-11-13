// mouse Pressed

void setup() {
  size(512, 512);
}

void draw() {
  if (mousePressed == true) {
    if (mouseButton == LEFT) {
      fill(0); // Black
    } else if (mouseButton == RIGHT) {
      fill(255); // White
    }
  } else {
    fill(128); // Gray
  }
  rect(0, 0, width, height);
}
