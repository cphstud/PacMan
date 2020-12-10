class Actor {
  float xPos;
  float yPos;
  int id;
  int speed;
  int direction;
  String name;
  int col;

  Actor(float x, float y, String n, int s) {
    xPos = x;
    yPos = y;
    name = n;  
    speed = s;
    direction = 1;
    col = 200;
  }

  void move(int val) {
    Direction dir = Direction.valueOf(val);
    switch (val) {
      case 1:moveU();break;
      case 2:moveL();break;
      case 3:moveR();break;
      case 4:moveD();break;
      default:moveL();
    }
  }
  
  void moveL() {    
    xPos = xPos - speed;
  }
  void moveR() {
    xPos = xPos + speed;
  }
  void moveU() {
    yPos = yPos - speed;
  }
  void moveD() {
    yPos = yPos + speed;
  }

  String getInfo() {
   return name; 
  }
  void display() {
    fill(col, 100, 100);
    strokeWeight(4);
    rectMode(CENTER);
    rect((xPos+1)*120, (yPos+1)*120, width/6, height/6);
    strokeWeight(1);
  }
}
