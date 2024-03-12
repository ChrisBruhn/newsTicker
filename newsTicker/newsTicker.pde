import processing.video.*; //<>//



APIController api;
ArrayList<News> headlines = new ArrayList<News>();
Capture video;

int i=0;

void setup() {
  video = new Capture(this, 640, 480);
  video.start();

  size(1400, 900);
  strokeWeight(0);
  textSize(78);
  fill(0);

  //  startPos=new PVector(width, height-100);
  api = new APIController();
  initNewsList();
}

void draw() {
  background (227);
    image(video, 0, 0, width, height);

  fill(255, 255, 0);
  rect(0, height-200, width, 150); // red square for BREAKING
  fill(0);

  News current = headlines.get(i);
  current.drawNews(); // vis på skærm
  current.move(); // flyt på skærm
  if (resetNews(current)) {
    i++;
  }
  // start from the beginning
  if (i >= headlines.size()) {
    i=0;
  }

  fill(255, 0, 0);
  rect(0, height-200, 400, 150);
  fill(0);
  text("BREAKING", 30, height-100);
}


void initNewsList() {
  for (int i=0; i<api.getNewsNumbers(); i++) {
    headlines.add( new News(api.getOne(i), width, height-100));
  }
}

boolean resetNews(News current) {
  // træller 400 fra for at kompensere for den røde boks
  if (current.getPos().x < -(current.getLength()-400)) {
    current.setPos();
    return true;
  }
  return false;
}

void captureEvent(Capture video) {
  video.read();
}
