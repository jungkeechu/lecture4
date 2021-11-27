// for characters
PImage [] player = new PImage[2];
int xPos, yPos;
int dir;

// for items
int itemNo = 5;
int [] itemX = new int [itemNo];
int [] itemY = new int [itemNo];
int [] itemSpeed = new int [itemNo];
boolean [] itemVisible = new boolean [itemNo];
int score = 0;

void setup() {
  size(500, 500);
  player[0] = loadImage("left.png");
  player[1] = loadImage("right.png");
  xPos = width/2;
  yPos = height-50;
  dir = 0;
  imageMode(CENTER);
  
  initItem();
}

void draw() {
  background(255);
  image(player[dir], xPos, yPos, 100, 100);
  
  updateItem();
  drawItem();
  addItem( int(random(width)), 0 );
  checkCollision();
  drawScores();
}


void drawScores(){
  text("SCORE: "+score, 10, 10);
}

void checkCollision(){
  for (int i = 0; i < itemNo; i++) {
    if (itemVisible[i]) {
      if (dist(itemX[i], itemY[i], xPos, yPos) < 40) {
        println("COLLISION");
        itemVisible[i] = false;
        score++;
        fill(255, 0, 0);
        ellipse(xPos, yPos, 100, 100);
      }
    }
  }
  
}

void mousePressed() {
  addItem(mouseX, mouseY);
}

void initItem() {
  for (int i = 0; i < itemNo; i++) {
    itemX[i] = 0;
    itemY[i] = 0;
    itemVisible[i] = false;
  }
}

void updateItem() {
  for (int i = 0; i < itemNo; i++) {
    if (itemVisible[i]) {
      itemY[i] += itemSpeed[i];
    }
  }

  for (int i = 0; i < itemNo; i++){
    if ( itemY[i] > height ) {
      itemVisible[i] = false;
    }
  }
}

void drawItem( ) {
  fill(0); 
    for (int i=0; i<itemNo; i++) {
    if (itemVisible[i]) {
      ellipse(itemX[i], itemY[i], 30, 30);
    }
  }
}

void addItem(int x, int y ) {
  for (int i=0; i<itemNo; i++) {
    if ( itemVisible[i] == false ) {
      itemX[i] = x; 
        itemY[i] = y; 
        itemSpeed[i] = int(random(1, 3)); 
        itemVisible[i] = true; 
        break;
    }
  }
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
