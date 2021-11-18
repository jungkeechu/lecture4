PImage [] player = new PImage[2];
int xPos;
int dir;

void setup() {
  size(500, 500);
  player[0] = loadImage("left.png");
  player[1] = loadImage("right.png");
  xPos = 0;
  dir = 0;
}
void draw() {
  background(255);
  image(player[dir], xPos, 400, 100, 100);
}

void keyPressed() {
  if ( key == CODED ) {
    if ( keyCode == LEFT ) {
      xPos -= 10;
      dir = 0;
    }
    else if ( keyCode == RIGHT ) {
      xPos += 10;
      dir = 1;
    }
  }
}
