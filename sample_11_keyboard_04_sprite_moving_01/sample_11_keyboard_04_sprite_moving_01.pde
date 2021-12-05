PImage player;
int xPos;

void setup() {
  size(500, 500);
  player = loadImage("left.png");
  xPos = 0;
}

void draw() {
  background(255);
  image(player, xPos, 400, 100, 100);
}

void keyPressed() {
  if ( key == CODED ) {
    if ( keyCode == LEFT ) {
      xPos -= 10;
      if (xPos < 0) {
        xPos = 0;
      }
    }
    else if ( keyCode == RIGHT ) {
      xPos += 10;
      if (xPos+100 > width){
        xPos = width-100;
      }
    }
  }
}
