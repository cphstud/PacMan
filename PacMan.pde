Node[][] bane; //<>//
Actor[] actors;

int w, h, unit, numOfRows, numOfCols, numOfActors, delay;

void setup() {
  size(800, 800);
  numOfRows=5;
  numOfCols=5;
  numOfActors=1;
  delay=20;
  w=width/numOfRows;
  h=height/numOfCols;
  bane = new Node[numOfRows][numOfCols];
  actors = new Actor[numOfActors+1];
  initBane();
  initMaze();
  initActors();
}

void draw() {
  background(255);
  drawBane();
  moveActors();
  drawActors();
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


void initActors() {
  int centX=1+numOfCols/2;
  int centY=1+numOfRows/2;

  for (int i=0; i<numOfActors; i++) {
    //float x, float y, String n, int s
    Actor tmpActor = new Actor(centX, centY, "Kurt", 1);
    actors[i] = tmpActor;
  }
}


void moveActors() {
  for (int i=0; i<numOfActors; i++) {
    //float x, float y, String n, int s
    int dirRand = int (random(1, 4));
    if (frameCount%delay==0) {
       println("A moved " + actors[i].getInfo());
    actors[i].move(dirRand);
    }
   
  }
}

void drawActors() {
  for (int i=0; i<numOfActors; i++) {
    //float x, float y, String n, int s
    //actors[i].move(Direction.NORTH);
    actors[i].display();
  }
}
