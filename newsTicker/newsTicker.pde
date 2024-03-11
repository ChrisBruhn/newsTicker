String message = "BREAKING NEWS...";
PVector speed = new PVector(-4, 0);

APIController api;
News n1;
PVector startPos;
int i=0;
void setup() {
  size(1400, 600);
  startPos=new PVector(width, height-100);
  n1= new News(message, startPos);
  textSize(78);
  fill(0);
  api = new APIController();
}

void draw() {
  background (227);
  fill(255, 255, 0);
  rect(0, height-200, width, 150);
  fill(0);
  //println(api.getOne());
  
  //println(api.getNewsNumbers());
  
    
    n1.setMessage(api.getOne(i));
    n1.drawNews();
    n1.addPos(speed); //<>//
    if (n1.getPos().x<-textWidth(api.getOne(i))) {
      PVector newPos = new PVector(width, height-100);
      n1.setPos(newPos);
      i++;
      if(i>=api.getNewsNumbers()) i=0;
    }
  
}
