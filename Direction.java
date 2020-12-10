import java.util.*;

enum Direction {
  NORTH(1), 
    WEST(2), 
    EAST(3), 
    SOUTH(4);

  final int val;
  final static Map map = new HashMap<>();

  Direction(int val) {
    this.val = val;
  }

  static {
    for (Direction dir : Direction.values()) {
      map.put(dir.val, dir);
    }
  }



  static Direction valueOf(int dirType) {
    return (Direction) map.get(dirType);
  }

  int getDir() {
    return val;
  }
}
