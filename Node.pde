class Node {
  final static int counter=0;
  int id;
  float xPos;
  float yPos;
  Type nodeType;
  Node parent;
  int col;

  Node(int x, int y) {
    id=counter;
    xPos=x;
    yPos=y;
    nodeType=Type.PASSAGE;
    col=0;
  }

  void display() {
    int fillVal = nodeType.getId(); //<>//

    fill(fillVal*6, 100, 100);
    rectMode(CENTER);
    rect((xPos+1)*120, (yPos+1)*120, width/5, height/5);
    noFill();
  }
}
