class News {

  PVector pos = new PVector(0, 0);
  String msg;


  News( PVector pos) {
    this.pos = pos;
    
  }


  void setPos(PVector pos) {
    this.pos=pos;
  }

  void addPos(PVector pos) {
    this.pos.add(pos);
  }

  PVector getPos() {
    return pos;
  }

  void drawNews() {
    text(msg, pos.x, pos.y);
  }

  void setMessage(String msg) {
    this.msg=msg;
  }
}
