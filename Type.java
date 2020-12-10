enum Type {
  START(19), 
    MID(0), 
    END(21), 
    PASSAGE(20), 
    WALL(5), 
    ESCAPE(40);
    
     final int id;
    
    Type(int val) {
      this.id = val;
    }
    
    int getId() {
      return id;
    }  
}
