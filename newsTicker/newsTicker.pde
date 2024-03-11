String message = "BREAKING NEWS...";
PVector speed = new PVector(-4, 0);

APIController api = new APIController();
News n1;
PVector startPos;
void setup() {
  size(1200, 800);
  startPos=new PVector(width, height-100);
  n1= new News(message, startPos);
  textSize(78);
  fill(0);
}

void draw() {
  background (227);
  fill(255,255,0);
  rect(0,height-200,width,150);
  fill(0);
  n1.drawNews();
  n1.addPos(speed);
  if (n1.getPos().x<-textWidth(message)) {
    PVector newPos = new PVector(width, height-100);
    n1.setPos(newPos);
  }
}
