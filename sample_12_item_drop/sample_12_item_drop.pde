int itemNo = 10;
int [] itemX = new int [itemNo];
int [] itemY = new int [itemNo];
int [] itemSpeed = new int [itemNo];
boolean [] itemVisible = new boolean [itemNo];

void setup() {
  size(600, 600);
  initItem();
}


void draw() {
  background(255);

  updateItem();
  drawItem();
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
        itemSpeed[i] = int(random(1, 5)); 
        itemVisible[i] = true; 
        break;
    }
  }
}
