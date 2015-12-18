//main character vars
float carX=20;
float carY=120;
//enemy 1 vars
float aX=410;
float aY=80;
float aVX=8;
int amp1=(int)(random(20)+5);
float cT;

//enemy 2 vars
float a2X=490;
float a2Y=130;
float a2VX=8;
int amp2=(int)(random(5)+5);
float c2T;

//enemy 3 vars
float a3X=450;
float a3Y=210;
float a3VX=8;
int amp3=(int)(random(15)+5);
float c3T;

//car dragging
int drag=0;
int opacity=255;
int count=0;
//background elements
float buildingX=300;
float buildingY=0;
//yellow lines
float line1X;
float line2X=120;
float line3X=240;
float line4X=360;
float line5X=480;
float line6X=600;
float line7X=720;
int pageNumber=1;
//next page button
float alpha;

void setup() {
  frameRate(30);
  size(480, 320);
}
void draw() {
  if  (pageNumber==1) {
    startscreen();
  }

  if  (pageNumber==3) {
    page3();
  }
  if  (pageNumber==2) {
    page2();
  }
  if (pageNumber==4) {
    page4();
  }
  if (keyPressed) {
    if(key == 'b') {
      pageNumber=1;
    }
    if(key == '1') {
      pageNumber=3;
    }
     if(key == '2') {
      pageNumber=4;
    }
  }
}

void mousePressed() {
  drag=1;
  // click to start game
  if (pageNumber==1&&(mouseX>100 && mouseX<350 && mouseY>200 && mouseY<240)) {
    pageNumber=2;
  }
  if (pageNumber==2 && (dist(mouseX, mouseY, 400, 280)<20)) {
    pageNumber=4; // later on change this to 3
  }
}

void mouseReleased() {
}
void mouseDragged() {
  if (carY<50) {
    carY=50;
  }
  if (carY+20>250) {
    carY=230;
  }
  if (drag==1) {
    carY=mouseY;
  }
}