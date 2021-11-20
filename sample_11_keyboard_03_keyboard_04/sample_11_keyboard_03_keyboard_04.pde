int value = 0;

void setup() {
  size(500, 500);
}

void draw() {
  fill(value);
  rect(100, 100, width-200, height-200);
}

void keyPressed() {
  if (key >= 'A' && key <= 'Z') {
    println(key);
  }
  else{
    println("OTHER KEY");
  }
}
