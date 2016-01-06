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

//background eleint count=0;
int opacity=225;
float buildingX=300;
float building2X=400;
float building3X=500;
float building4X=600;
float building5X=700;
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
    page6();
  }
  if  (pageNumber==2) {
    page2();
  }
  if (pageNumber==4) {
    page3();
  }
  if (pageNumber==5) { //
    page4();
  }
  if (pageNumber==6) {
    page5();
  }
  if(pageNumber==7){
    EndGame();
  }
  if(pageNumber==8){
  page7();
  }
  if (keyPressed) {
    if (key == 'b') {
      pageNumber=1;
    }
    if (key == '2') {
      pageNumber=4;
    }
    if (key == '3') {
      pageNumber=5;
    }
    if (key == '4') {
      pageNumber=6;
    }
    if (key=='1') {
      pageNumber=3;
    }
    if (key=='e'){
      pageNumber=7;
    }
    if(key=='5'){
    pageNumber=8;
    }
  }
}

void mousePressed() {
  // click to start game
  if (pageNumber==1&&(mouseX>100 && mouseX<350 && mouseY>200 && mouseY<240)) {
    pageNumber=2;
  }
  if (pageNumber==2 && (dist(mouseX, mouseY, 400, 280)<20)) {
    pageNumber=3;
  }
  if(pageNumber==3&&alpha==255&&(dist(mouseX,mouseY,400,280)<20)){
    pageNumber=4;
  }
  if(pageNumber==4 && alpha2==255 && (dist(mouseX,mouseY,400,280)<20)){
    pageNumber=5;
  }
  if(pageNumber==5 && alpha3==255 && (dist(mouseX,mouseY,400,280)<20)){
    pageNumber=6;
  }
  if(pageNumber==6 && alpha4==255 && (dist(mouseX,mouseY,400,280)<20)){
    pageNumber=7;
  }
  if(pageNumber==7 && (dist(mouseX,mouseY,400,280)<20)){
    pageNumber=1;
  }
  if(pageNumber==8 && (dist(mouseX,mouseY,400,280)<20)){
    pageNumber=1;
  }
  if (pageNumber==5) // later on change this to 3umber==5)// 
  {
    if (corp) { 
      lose = true;
    } else {
      lose = false;
    }
    c2difX = mouseX-c2X; 
    c2difY = mouseY-c2Y;
  }
  if (pageNumber==4) {
    if (core) { 
      lock = true;
    } else {
      loc = false;
    }
    c1difX = mouseX-carX; 
    c1difY = mouseY-carY;
  }

  if (pageNumber==6) {
    if (corn) { 
      locked = true; //
    } else {
      locked = false;
    }
    c3difX = mouseX-c3X; 
    c3difY = mouseY-c3Y;
  }
  if (pageNumber==3) {
    if (cor) { 
      loc = true;
    } else {
      loc = false;
    }
    c0difX = mouseX-car1X; 
    c0difY = mouseY-car1Y;
  }
  if (pageNumber==8) {
    if (co) { 
      lo = true;
    } else {
      lo = false;
    }
    c4difX = mouseX-c4X; 
    c4difY = mouseY-c4Y;
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
  if (drag==2) {
    c2X=mouseX;
  }
  if (drag==3) {
    c3Y=mouseY;
  }
  //c2X left and right barrier
  if (c2X<118) {
    c2X=118;
  }
  if (c2X+20>298) {
    c2X=278;
  }
  //
  if (locked) {
    c3Y = mouseY-c3difY;
  }
  if (lock) {
    carY = mouseY-c1difY;
  }
  if (lose) {
    c2X = mouseX-c2difX;
  }
  if (loc) {
    car1Y = mouseY-c0difY;
  }
  if (lo) {
    c4Y = mouseY-c4difY;
  }
}