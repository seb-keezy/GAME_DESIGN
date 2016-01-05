//main character vars
float car1X=20;
float car1Y=120;
//enemy 1 vars
float eX=410;
float eY=80;
float eVX=8;
int AMP1=(int)(random(20)+5);
float eT;

//enemy 2 vars
float e2X=490;
float e2Y=130;
float e2VX=8;
int AMP2=(int)(random(5)+5);
float e2T;

//enemy 3 vars
float e3X=450;
float e3Y=210;
float e3VX=8;
int AMP3=(int)(random(15)+5);
float e3T;

//background elements
float buildX=300;
float build2X=400;
float build3X=500;
float build4X=600;
float build5X=700;
float buildY=0;
//yellow lines
float Line1X;
float Line2X=120;
float Line3X=240;
float Line4X=360;
float Line5X=480;
float Line6X=600;
float Line7X=720;
float c0difX = 0.0; 
float c0difY = 0.0; 
boolean cor = false;
boolean loc = false;
void page6() {
  if (car1Y<50) {
    car1Y=50;
  }
  if (car1Y+20>250) {
    car1Y=230;
  }
  count++;
  background(#FFFFFF);
  //street
  fill(#8E8282);
  rect(0, 50, 480, 200);

  rect(buildX, buildY, 50, 50);
  rect(build2X, buildY, 50, 50);
  rect(build3X, buildY, 50, 50);
  rect(build4X, buildY, 50, 50);
  rect(build5X, buildY, 50, 50);
  fill(#000000);
  rect(buildX+10, buildY+10, 30, 30);
  rect(build2X+10, buildY+10, 30, 30);  
  rect(build3X+10, buildY+10, 30, 30);  
  rect(build4X+10, buildY+10, 30, 30);  
  rect(build5X+10, buildY+10, 30, 30);
  fill(#8E8282);
  rect(buildX+11, buildY+11, 28, 28);
  rect(build2X+11, buildY+11, 28, 28);  
  rect(build3X+11, buildY+11, 28, 28);  
  rect(build4X+11, buildY+11, 28, 28);
  rect(build5X+11, buildY+11, 28, 28);
  buildX-=5;
  build2X-=5;  
  build3X-=5;  
  build4X-=5;
  build5X-=5;
  if (buildX+50<0) {
    buildX=500;
  }
  if (build2X+50<0) {
    build2X=500;
  }
  if (build3X+50<0) {
    build3X=500;
  }
  if (build4X+50<0) {
    build4X=500;
  }
  if (build5X+50<0) {
    build5X=500;
  }
  //yellow lines
  strokeWeight(6);
  stroke(#FFFF00);
  line(Line1X, 50+(200/3), Line1X+40, 50+(200/3));
  line(Line2X, 50+(200/3), Line2X+40, 50+(200/3));
  line(Line3X, 50+(200/3), Line3X+40, 50+(200/3));
  line(Line4X, 50+(200/3), Line4X+40, 50+(200/3));
  line(Line5X, 50+(200/3), Line5X+40, 50+(200/3));
  line(Line6X, 50+(200/3), Line6X+40, 50+(200/3));
  line(Line7X, 50+(200/3), Line7X+40, 50+(200/3));
  line(Line1X, 50+(400/3), Line1X+40, 50+(400/3));
  line(Line2X, 50+(400/3), Line2X+40, 50+(400/3));
  line(Line3X, 50+(400/3), Line3X+40, 50+(400/3));
  line(Line4X, 50+(400/3), Line4X+40, 50+(400/3));
  line(Line5X, 50+(400/3), Line5X+40, 50+(400/3));
  line(Line6X, 50+(400/3), Line6X+40, 50+(400/3));
  stroke(0);
  strokeWeight(1);
  Line1X-=5;
  Line2X-=5;
  Line3X-=5;
  Line4X-=5;
  Line5X-=5;
  Line6X-=5;
  Line7X-=5;
  if (Line1X<-120) {
    Line1X=600;
  }
  if (Line2X<-120) {
    Line2X=600;
  }
  if (Line3X<-120) {
    Line3X=600;
  }
  if (Line4X<-120) {
    Line4X=600;
  }
  if (Line5X<-120) {
    Line5X=600;
  }
  if (Line6X<-120) {
    Line6X=600;
  }
  if (Line7X<-120) {
    Line7X=600;
  }
  //main character
  fill(#333FA7);
  rect(car1X, car1Y, 50, 20);
  //enemy 1
  fill(#FF0000);
  rect(eX, eY, 50, 20);
  eT+=.1;
  eX-=eVX;
  eY=80+AMP1*sin(cT);

  //enemy 2
  e2T+=.3;
  rect(e2X, e2Y, 50, 20);
  e2Y=145+AMP2*sin(c2T);
  e2X-=e2VX;

  if (eX<car1X-80) {
    eX=520;
    AMP1=(int)(random(20)+5);
    eVX=(int)random(15)+8;
  }
  if (e2X<car1X-80) {
    e2X=520;
    AMP2=(int)(random(5)+5);
    e2VX=(int)random(15)+8;
  }


  // COllISION WITH ENEMY 1
  if (eX<car1X+50 && car1Y+20>eY && car1Y<eY+20) {
    pageNumber=1;
    count=0;
    //main character vars
    car1X=20;
    car1Y=120;
    //enemy 1 vars
    eX=410;
    eY=80;
    eVX=8;
    AMP1=(int)(random(20)+5);
    eT=0;

    //enemy 2 vars
    e2X=490;
    e2Y=130;
    e2VX=8;
    AMP2=(int)(random(5)+5);
    e2T=0;
  }
  // COllISION WITH ENEMY 2
  if (e2X<car1X+50 && car1Y+20>e2Y && carY<e2Y+20) {
    pageNumber=1;
    count=0;
    //main character vars
    car1X=20;
    car1Y=120;
    //enemy 1 vars
    eX=410;
    eY=80;
    eVX=8;
    AMP1=(int)(random(20)+5);
    eT=0;

    //enemy 2 vars
    e2X=490;
    e2Y=130;
    e2VX=8;
    AMP2=(int)(random(5)+5);
    e2T=0;
  }
  textSize(15);
  text(count, 100, 100);
  //Button for next page
  fill(0, alpha);
  stroke(0, alpha);
  ellipse(400, 280, 40, 40);
  if (count>300 && eX<-50 && e2X<-50&& e3X<-50) {
    eVX=0;
    e2VX=0;
  }
  if (mouseX>car1X && mouseX<car1X+50 && mouseY>car1Y && mouseY<car1Y+20) {
    cor = true;  
    if (!loc) {
    }
  } else {
    cor = false;
  }
}