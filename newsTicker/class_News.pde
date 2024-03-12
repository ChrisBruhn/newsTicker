class News {

  PVector pos;
  String msg;
  PVector speed = new PVector(-8, 0);



  News(String msg, float x, float y) {
    this.pos = new PVector(x, y);
    
    this.msg=msg;
  }


  void setPos() {
    this.pos=new PVector(width, height-100);
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
  float getLength() {
    return textWidth(msg);
  }
  void move(){
    pos.add(speed);
  }
}
