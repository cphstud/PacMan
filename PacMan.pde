Node[][] bane;
int w, h, unit, numOfRows, numOfCols;

void setup() {
  size(800, 800);
  numOfRows=5;
  numOfCols=5;
  w=width/numOfRows;
  h=height/numOfCols;
  bane = new Node[numOfRows][numOfCols];
  initBane();
  initMaze();
}

void draw() {
  background(255);
  drawBane();
}


void initBane() {
  for (int i=0; i<numOfCols; i++) {
    for (int j=0; j<numOfRows; j++) {
      bane[i][j]=new Node(i, j);
    }
  }
}

void initMaze() {
  int centX=1+numOfCols/2;
  int centY=1+numOfRows/2;
  
  bane[0][0].nodeType = Type.START;
  bane[centX][centY].nodeType = Type.MID;
  bane[centX-1][centY-1].nodeType = Type.WALL;
  bane[centX-1][centY-2].nodeType = Type.WALL;
  bane[centX-2][centY+1].nodeType = Type.WALL;
  bane[numOfCols-1][numOfRows-1].nodeType = Type.END;
}

void drawBane() {
  for (int i=0; i<numOfCols; i++) {
    for (int j=0; j<numOfRows; j++) {
      bane[i][j].display();
    }
  }
}
