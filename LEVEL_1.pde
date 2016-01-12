//main character vars
float car1X=20;
float car1Y=120;
//enemy 1 vars
float eX=410;
float eY=200/3;
float eVX=8;
int AMP1=(int)(random(30)+5);
float eT;

//enemy 2 vars
float e2X=490;
float e2Y=400/3;
float e2VX=8;
int AMP2=(int)(random(30)+5);
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
int count=0;
int sX=240;
int s2X=780;
void page6() {
  count++;
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
  strokeWeight(5);
  line(sX, 135*.2, sX+20, 135*.2);
  line(sX, 185*.2, sX+20, 185*.2);
  line(sX+45, 140*.2, sX+65, 165*.2);
  line(sX+45, 190*.2, sX+65, 215*.2);
  line(sX+90, 175*.2, sX+110, 205*.2);
  line(sX+90, 225*.2, sX+110, 250*.2);
  line(sX+135, 220*.2, sX+155, 220*.2);
  line(sX+135, 265*.2, sX+155, 265*.2);
  line(sX+180, 250*.2, sX+200, 225*.2);
  line(sX+180, 205*.2, sX+200, 180*.2);
  line(sX+225, 165*.2, sX+245, 140*.2);
  line(sX+225, 210*.2, sX+245, 185*.2);

  line(sX-25, 140*.2, sX-45, 165*.2);
  line(sX-25, 190*.2, sX-45, 215*.2);
  line(sX-70, 175*.2, sX-90, 205*.2);
  line(sX-70, 225*.2, sX-90, 250*.2);
  line(sX-115, 220*.2, sX-135, 220*.2);
  line(sX-115, 265*.2, sX-135, 265*.2);
  line(sX-160, 250*.2, sX-180, 225*.2);
  line(sX-160, 205*.2, sX-180, 180*.2);
  line(sX-205, 165*.2, sX-225, 140*.2);
  line(sX-205, 210*.2, sX-225, 185*.2);
  strokeWeight(1);
  fill(#CECECE);
  beginShape();
  vertex(sX+20, 300*.2);
  vertex(sX+45, 300*.2);
  vertex(sX+45, 75*.2);
  vertex(sX+20, 25*.2);
  endShape(CLOSE);
  beginShape();
  vertex(sX+65, 300*.2);
  vertex(sX+90, 300*.2);
  vertex(sX+90, 125*.2);
  vertex(sX+65, 75*.2);
  endShape(CLOSE);
  beginShape();
  vertex(sX+110, 300*.2);
  vertex(sX+135, 300*.2);
  vertex(sX+135, 175*.2);
  vertex(sX+110, 125*.2);
  endShape(CLOSE);
  beginShape();
  vertex(sX+155, 300*.2);
  vertex(sX+180, 300*.2);
  vertex(sX+180, 125*.2);
  vertex(sX+155, 175*.2);
  endShape(CLOSE);
  beginShape();
  vertex(sX+200, 300*.2);
  vertex(sX+225, 300*.2);
  vertex(sX+225, 75*.2);
  vertex(sX+200, 125*.2);
  endShape(CLOSE);
  beginShape();
  vertex(sX+245, 300*.2);
  vertex(sX+270, 300*.2);
  vertex(sX+270, 25*.2);
  vertex(sX+245, 75*.2);
  endShape(CLOSE);
  beginShape();
  vertex(sX-25, 300*.2);
  vertex(sX, 300*.2);
  vertex(sX, 25*.2);
  vertex(sX-25, 75*.2);
  endShape(CLOSE);
  beginShape();
  vertex(sX-45, 300*.2);
  vertex(sX-70, 300*.2);
  vertex(sX-70, 125*.2);
  vertex(sX-45, 75*.2);
  endShape(CLOSE);
  beginShape();
  vertex(sX-115, 300*.2);
  vertex(sX-90, 300*.2);
  vertex(sX-90, 125*.2);
  vertex(sX-115, 175*.2);
  endShape(CLOSE);
  beginShape();
  vertex(sX-135, 300*.2);
  vertex(sX-160, 300*.2);
  vertex(sX-160, 125*.2);
  vertex(sX-135, 175*.2);
  endShape(CLOSE);
  beginShape();
  vertex(sX-180, 300*.2);
  vertex(sX-205, 300*.2);
  vertex(sX-205, 75*.2);
  vertex(sX-180, 125*.2);
  endShape(CLOSE);
  beginShape();
  vertex(sX-225, 300*.2);
  vertex(sX-250, 300*.2);
  vertex(sX-250, 25*.2);
  vertex(sX-225, 75*.2);
  endShape(CLOSE);


  strokeWeight(5);
  line(s2X, 135*.2, s2X+20, 135*.2);
  line(s2X, 185*.2, s2X+20, 185*.2);
  line(s2X+45, 140*.2, s2X+65, 165*.2);
  line(s2X+45, 190*.2, s2X+65, 215*.2);
  line(s2X+90, 175*.2, s2X+110, 205*.2);
  line(s2X+90, 225*.2, s2X+110, 250*.2);
  line(s2X+135, 220*.2, s2X+155, 220*.2);
  line(s2X+135, 265*.2, s2X+155, 265*.2);
  line(s2X+180, 250*.2, s2X+200, 225*.2);
  line(s2X+180, 205*.2, s2X+200, 180*.2);
  line(s2X+225, 165*.2, s2X+245, 140*.2);
  line(s2X+225, 210*.2, s2X+245, 185*.2);

  line(s2X-25, 140*.2, s2X-45, 165*.2);
  line(s2X-25, 190*.2, s2X-45, 215*.2);
  line(s2X-70, 175*.2, s2X-90, 205*.2);
  line(s2X-70, 225*.2, s2X-90, 250*.2);
  line(s2X-115, 220*.2, s2X-135, 220*.2);
  line(s2X-115, 265*.2, s2X-135, 265*.2);
  line(s2X-160, 250*.2, s2X-180, 225*.2);
  line(s2X-160, 205*.2, s2X-180, 180*.2);
  line(s2X-205, 165*.2, s2X-225, 140*.2);
  line(s2X-205, 210*.2, s2X-225, 185*.2);
  strokeWeight(1);
  fill(#CECECE);
  beginShape();
  vertex(s2X+20, 300*.2);
  vertex(s2X+45, 300*.2);
  vertex(s2X+45, 75*.2);
  vertex(s2X+20, 25*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s2X+65, 300*.2);
  vertex(s2X+90, 300*.2);
  vertex(s2X+90, 125*.2);
  vertex(s2X+65, 75*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s2X+110, 300*.2);
  vertex(s2X+135, 300*.2);
  vertex(s2X+135, 175*.2);
  vertex(s2X+110, 125*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s2X+155, 300*.2);
  vertex(s2X+180, 300*.2);
  vertex(s2X+180, 125*.2);
  vertex(s2X+155, 175*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s2X+200, 300*.2);
  vertex(s2X+225, 300*.2);
  vertex(s2X+225, 75*.2);
  vertex(s2X+200, 125*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s2X+245, 300*.2);
  vertex(s2X+270, 300*.2);
  vertex(s2X+270, 25*.2);
  vertex(s2X+245, 75*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s2X-25, 300*.2);
  vertex(s2X, 300*.2);
  vertex(s2X, 25*.2);
  vertex(s2X-25, 75*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s2X-45, 300*.2);
  vertex(s2X-70, 300*.2);
  vertex(s2X-70, 125*.2);
  vertex(s2X-45, 75*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s2X-115, 300*.2);
  vertex(s2X-90, 300*.2);
  vertex(s2X-90, 125*.2);
  vertex(s2X-115, 175*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s2X-135, 300*.2);
  vertex(s2X-160, 300*.2);
  vertex(s2X-160, 125*.2);
  vertex(s2X-135, 175*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s2X-180, 300*.2);
  vertex(s2X-205, 300*.2);
  vertex(s2X-205, 75*.2);
  vertex(s2X-180, 125*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s2X-225, 300*.2);
  vertex(s2X-250, 300*.2);
  vertex(s2X-250, 25*.2);
  vertex(s2X-225, 75*.2);
  endShape(CLOSE);
  sX-=5;
  s2X-=5;
  if (sX+350<0) {
    sX=720;
  }
  if (s2X+350<0) {
    s2X=720;
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


  //enemy 1
  fill(#FF0000);
  rect(eX, eY, 50, 20);
  eT+=.1;
  eX-=eVX;
  eY=30+(200/3)+AMP1*sin(eT);

  //enemy 2
  e2T+=.07;
  rect(e2X, e2Y, 50, 20);
  e2Y=30+(400/3)+AMP2*sin(e2T);
  e2X-=e2VX;

  if (eX<-80) {
    eX=520;
    AMP1=(int)(random(30)+5);
    eVX=(int)random(15)+8;
  }
  if (e2X<-80) {
    e2X=520;
    AMP2=(int)(random(20)+5);
    e2VX=(int)random(15)+8;
  }


  // COllISION WITH ENEMY 1
  if (eX<car1X+40 && car1Y+20>eY && car1Y<eY+20) {
    count=0;
    //main character vars
    car1X=20;
    car1Y=120;
    //enemy 1 vars
    eX=410;
    eY=50+(200/3);
    eVX=8;
    AMP1=(int)(random(30)+5);
    eT=0;

    //enemy 2 vars
    e2X=490;
    e2Y=50+(400/3);
    e2VX=8;
    AMP2=(int)(random(20)+5);
    e2T=0;
  }
  // COllISION WITH ENEMY 2
  if (e2X<car1X+40 && car1Y+20>e2Y && car1Y<e2Y+20) {
    count=0;
    //main character vars
    car1X=20;
    car1Y=120;
    //enemy 1 vars
    eX=410;
    eY=50+(200/3);
    eVX=8;
    AMP1=(int)(random(30)+5);
    eT=0;

    //enemy 2 vars
    e2X=490;
    e2Y=50+(400/3);
    e2VX=8;
    AMP2=(int)(random(20)+5);
    e2T=0;
  }
  textSize(15);
  text(count, 50, 300);
  //Button for next page
  fill(0, alpha);
  stroke(0, alpha);
  ellipse(400, 280, 40, 40);
  if (count>500) {
    eVX=0;
    e2VX=0;
    alpha=255;
  } else {
    alpha=0;
  }
  if (mouseX>car1X && mouseX<car1X+50 && mouseY>car1Y && mouseY<car1Y+20) {
    cor = true;  
    if (!loc) {
    }
  } else {
    cor = false;
  }

  strokeWeight(3);
  stroke(#000000);
  strokeWeight(1);
  fill(#333FA7);
  beginShape();
  vertex(car1X, car1Y+20); //380 //120
  vertex(car1X, car1Y+10); //350 //110
  vertex(car1X+5, car1Y); //340 100
  vertex(car1X+25, car1Y); //340 100
  vertex(car1X+37.5, car1Y+10); //360 110
  vertex(car1X+50, car1Y+10); //360 110
  vertex(car1X+50, car1Y+20); //120
  endShape(CLOSE);
  fill(#FFFFFF);
  beginShape();
  vertex(car1X+4, car1Y+10);
  vertex(car1X+4, car1Y+10);
  vertex(car1X+6.5, car1Y+5);
  vertex(car1X+6.5, car1Y+10);
  endShape(CLOSE);
  fill(#000000);
  ellipse(car1X+12.5, car1Y+20, 10, 10);
  ellipse(car1X+30, car1Y+20, 10, 10);
  fill(#BCB8B8);
  ellipse(car1X+12.5, car1Y+20, 6, 6);
  ellipse(car1X+30, car1Y+20, 6, 6);
  fill(#FFFFFF);
  beginShape();
  vertex(car1X+11, car1Y+5);
  vertex(car1X+11, car1Y+10);
  vertex(car1X+22.5, car1Y+10);
  vertex(car1X+22.5, car1Y+5);
  endShape(CLOSE);
  beginShape();
  vertex(car1X+25, car1Y+5);
  vertex(car1X+25, car1Y+10);
  vertex(car1X+25, car1Y+10);
  endShape(CLOSE);
  fill(#958585);
  quad(car1X+50, car1Y+15, car1X+50, car1Y+20, car1X+45, car1Y+20, car1X+45, car1Y+15);
}