void setup() {
  size(500, 500);
}

void draw() {
  if (keyPressed == true) {
    if (key >= 'A' && key <= 'Z') {
      println(key);
    }
  } else {
    println("OTHER KEYS");
  }
}
