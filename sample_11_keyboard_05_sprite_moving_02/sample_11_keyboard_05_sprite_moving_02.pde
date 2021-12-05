PImage [] player = new PImage[2];
int xPos;
int dir;
int itemNo = 10;
int [] x = new int [itemNo];
int [] y = new int [itemNo];
boolean [] isVisible = new boolean [itemNo];
int [] speed = new int [itemNo];
int score;

void setup() {
  size(900, 600);
  player[0] = loadImage("left.png");
  player[1] = loadImage("right.png");
  xPos = 0;
  dir = 0;
  initItems();
  imageMode(CENTER);
  score = 0;
}

void draw() {
  background(255);
  image(player[dir], xPos, 500, 100, 100);
  drawItems();
  addItem(int(random(width)), 0);
  moveItems();
  checkCollision();
  text("SCORE : " + score, 20, 20);
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


void initItems(){
  for(int i = 0; i < itemNo; i++){
    x[i] = 0;
    y[i] = 0;
    isVisible[i] = false;
  }  
}

void drawItems(){
   for(int i = 0; i < itemNo; i++){
     if (isVisible[i]) {
       ellipse(x[i], y[i], 50, 50);  
     }
   }   
}

void mousePressed(){
  addItem(mouseX, mouseY);  
}

void addItem(int a, int b){
  for(int i = 0; i < itemNo; i++){
    if (isVisible[i] == false){
        x[i] = a;
        y[i] = b;
        speed[i] = int(   random(2, 5)   );
        isVisible[i] = true; 
        return;
    }
  } 
}

void moveItems(){
  for(int i = 0; i < itemNo; i++){
    if (isVisible[i] == true){
        y[i] = y[i] + speed[i];
    }
  }   

  for(int i = 0; i < itemNo; i++){
    if (y[i] > height){
        isVisible[i] = false;
    }
  }    
}

void checkCollision(){
  for(int i = 0; i < itemNo; i++){
    if (isVisible[i]){
        if ( dist(x[i], y[i], xPos, 500) < 75 ) {
          isVisible[i] = false;
          fill(255, 0, 0);
          ellipse(xPos, 500, 200, 200);
          score++;
        }
    }
  }  
}
