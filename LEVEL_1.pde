float c1difX = 0.0; 
float c1difY = 0.0; 
boolean core = false;
boolean lock = false;
void page3() {
  if (carY<50) {
    carY=50;
  }
  if (carY+20>250) {
    carY=230;
  }
  count++;
  background(#FFFFFF);
  //street
  fill(#8E8282);
  rect(0, 50, 480, 200);

  rect(buildingX, buildingY, 50, 50);
  buildingX-=5;
  //yellow lines
  strokeWeight(6);
  stroke(#FFFF00);
  line(line1X, 50+(200/3), line1X+40, 50+(200/3));
  line(line2X, 50+(200/3), line2X+40, 50+(200/3));
  line(line3X, 50+(200/3), line3X+40, 50+(200/3));
  line(line4X, 50+(200/3), line4X+40, 50+(200/3));
  line(line5X, 50+(200/3), line5X+40, 50+(200/3));
  line(line6X, 50+(200/3), line6X+40, 50+(200/3));
  line(line7X, 50+(200/3), line7X+40, 50+(200/3));
  line(line1X, 50+(400/3), line1X+40, 50+(400/3));
  line(line2X, 50+(400/3), line2X+40, 50+(400/3));
  line(line3X, 50+(400/3), line3X+40, 50+(400/3));
  line(line4X, 50+(400/3), line4X+40, 50+(400/3));
  line(line5X, 50+(400/3), line5X+40, 50+(400/3));
  line(line6X, 50+(400/3), line6X+40, 50+(400/3));
  stroke(0);
  strokeWeight(1);
  line1X-=5;
  line2X-=5;
  line3X-=5;
  line4X-=5;
  line5X-=5;
  line6X-=5;
  line7X-=5;
  if (line1X<-120) {
    line1X=600;
  }
  if (line2X<-120) {
    line2X=600;
  }
  if (line3X<-120) {
    line3X=600;
  }
  if (line4X<-120) {
    line4X=600;
  }
  if (line5X<-120) {
    line5X=600;
  }
  if (line6X<-120) {
    line6X=600;
  }
  if (line7X<-120) {
    line7X=600;
  }
  //main character
  fill(#333FA7, opacity);
  rect(carX, carY, 50, 20);

  //enemy 1
  fill(#FF0000);
  rect(aX, aY, 50, 20);
  cT+=.1;
  aX-=aVX;
  aY=80+amp1*sin(cT);

  //enemy 2
  c2T+=.3;
  rect(a2X, a2Y, 50, 20);
  a2Y=145+amp2*sin(c2T);
  a2X-=a2VX;

  //enemy 3
  c3T+=.075;
  rect(a3X, a3Y, 50, 20);
  a3Y=210+amp3*sin(c3T);
  a3X-=a3VX;
  if (aX<carX-80) {
    aX=520;
    amp1=(int)(random(20)+5);
    aVX=(int)random(15)+8;
  }
  if (a2X<carX-80) {
    a2X=520;
    amp2=(int)(random(5)+5);
    a2VX=(int)random(15)+8;
  }
  if (a3X<carX-80) {
    a3X=520;
    amp3=(int)(random(15)+5);
    a3VX=(int)random(15)+8;
  }

  // COllISION WITH ENEMY 1
  if (aX<carX+50 && carY+20>aY && carY<aY+20) {
    pageNumber=1;
    count=0;
    //main character vars
    carX=20;
    carY=120;
    //enemy 1 vars
    aX=410;
    aY=80;
    aVX=8;
    amp1=(int)(random(20)+5);
    cT=0;

    //enemy 2 vars
    a2X=490;
    a2Y=130;
    a2VX=8;
    amp2=(int)(random(5)+5);
    c2T=0;

    //enemy 3 vars
    a3X=450;
    a3Y=210;
    a3VX=8;
    amp3=(int)(random(15)+5);
    c3T=0;
  }
  // COllISION WITH ENEMY 2
  if (a2X<carX+50 && carY+20>a2Y && carY<a2Y+20) {
    pageNumber=1;
    count=0;
    //main character vars
    carX=20;
    carY=120;
    //enemy 1 vars
    aX=410;
    aY=80;
    aVX=8;
    amp1=(int)(random(20)+5);
    cT=0;

    //enemy 2 vars
    a2X=490;
    a2Y=130;
    a2VX=8;
    amp2=(int)(random(5)+5);
    c2T=0;

    //enemy 3 vars
    a3X=450;
    a3Y=210;
    a3VX=8;
    amp3=(int)(random(15)+5);
    c3T=0;
  } 
  // COllISION WITH ENEMY 3
  if (a3X<carX+50 && carY+20>a3Y && carY<a3Y+20) {
    pageNumber=1;
    count=0;
    //main character vars
    carX=20;
    carY=120;
    //enemy 1 vars
    aX=410;
    aY=80;
    aVX=8;
    amp1=(int)(random(20)+5);
    cT=0;

    //enemy 2 vars
    a2X=490;
    a2Y=130;
    a2VX=8;
    amp2=(int)(random(5)+5);
    c2T=0;

    //enemy 3 vars
    a3X=450;
    a3Y=210;
    a3VX=8;
    amp3=(int)(random(15)+5);
    c3T=0;
  }
  textSize(15);
  text(count, 100, 100);
  //Button for next page
  fill(0, alpha);
  stroke(0, alpha);
  ellipse(400, 280, 40, 40);
  if (count>300 && aX<-50 && a2X<-50&& a3X<-50) {
    alpha=255;
    aVX=0;
    a2VX=0;
    a3VX=0;
  }
  if (mouseX>carX && mouseX<carX+50 && mouseY>carY && mouseY<carY+20) {
    core = true;  
    if (!lock) {
    }
  } else {
    core = false;
  }
}