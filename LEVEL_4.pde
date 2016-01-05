float c3X=20;
float c3Y=120;
float c3difX = 0.0; 
float c3difY = 0.0; 
boolean corn = false;
boolean locked = false;
int alpha4;
//enemy 1 vars
float dX=410;
float dY=80;
float dVX=8;
int Amp1=(int)(random(20)+5);
float dT;

//enemy 2 vars
float d2X=490;
float d2Y=130;
float d2VX=8;
int Amp2=(int)(random(5)+5);
float d2T;

//enemy 3 vars
float d3X=450;
float d3Y=210;
float d3VX=8;
int Amp3=(int)(random(15)+5);
float d3T;
int count4=0;
void page5() {
  count4++;
  background(#FFFFFF);
  //street
  fill(#8E8282);
  rect(0, 50, 480, 200);

  rect(buildingX, buildingY, 50, 50);
  buildingX-=5;
  //yellow lines
  strokeWeight(6);
  stroke(#FFFF00);
  line(line1X, 50+40, line1X+40, 50+40);
  line(line2X, 50+40, line2X+40, 50+40);
  line(line3X, 50+40, line3X+40, 50+40);
  line(line4X, 50+40, line4X+40, 50+40);
  line(line5X, 50+40, line5X+40, 50+40);
  line(line6X, 50+40, line6X+40, 50+40);
  line(line7X, 50+40, line7X+40, 50+40);
  line(line1X, 50+80, line1X+40, 50+80);
  line(line2X, 50+80, line2X+40, 50+80);
  line(line3X, 50+80, line3X+40, 50+80);
  line(line4X, 50+80, line4X+40, 50+80);
  line(line5X, 50+80, line5X+40, 50+80);
  line(line6X, 50+80, line6X+40, 50+80);
  line(line7X, 50+80, line7X+40, 50+80);
  line(line1X, 50+120, line1X+40, 50+120);
  line(line2X, 50+120, line2X+40, 50+120);
  line(line3X, 50+120, line3X+40, 50+120);
  line(line4X, 50+120, line4X+40, 50+120);
  line(line5X, 50+120, line5X+40, 50+120);
  line(line6X, 50+120, line6X+40, 50+120);
  line(line7X, 50+120, line7X+40, 50+120);
  line(line1X, 50+160, line1X+40, 50+160);
  line(line2X, 50+160, line2X+40, 50+160);
  line(line3X, 50+160, line3X+40, 50+160);
  line(line4X, 50+160, line4X+40, 50+160);
  line(line5X, 50+160, line5X+40, 50+160);
  line(line6X, 50+160, line6X+40, 50+160);
  line(line7X, 50+160, line7X+40, 50+160);
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

  if (c3Y<50) {
    c3Y=50;
  }
  if (c3Y+20>250) {
    c3Y=230;
  }
  //main character
  fill(#333FA7, opacity);
  rect(c3X, c3Y, 50, 20);
  if (mouseX>c3X && mouseX<c3X+50 && mouseY>c3Y && mouseY<c3Y+20) {
    corn = true;  
    if (!locked) {
    }
  } else {
    corn = false;
  }
  //enemy 1
  fill(#FF0000);
  rect(dX, dY, 50, 20);
  dT+=.1;
  dX-=dVX;
  dY=80+Amp1*sin(cT);

  //enemy 2
  d2T+=.3;
  rect(d2X, d2Y, 50, 20);
  d2Y=145+Amp2*sin(c2T);
  d2X-=d2VX;

  //enemy 3
  d3T+=.075;
  rect(d3X, d3Y, 50, 20);
  d3Y=210+Amp3*sin(c3T);
  d3X-=d3VX;
  if (dX<c3X-80) {
    dX=520;
    Amp1=(int)(random(20)+5);
    dVX=(int)random(15)+8;
  }
  if (d2X<c3X-80) {
    d2X=520;
    Amp2=(int)(random(5)+5);
    d2VX=(int)random(15)+8;
  }
  if (d3X<c3X-80) {
    d3X=520;
    Amp3=(int)(random(15)+5);
    d3VX=(int)random(15)+8;
  }

  // COllISION WITH ENEMY 1
  if (dX<c3X+50 && c3Y+20>dY && c3Y<dY+20) {
    pageNumber=1;
    count4=0;
    //main character vars
    c3X=20;
    c3Y=120;
    //enemy 1 vars
    dX=410;
    dY=80;
    dVX=8;
    Amp1=(int)(random(20)+5);
    dT=0;

    //enemy 2 vars
    d2X=490;
    d2Y=130;
    d2VX=8;
    Amp2=(int)(random(5)+5);
    d2T=0;

    //enemy 3 vars
    d3X=450;
    d3Y=210;
    d3VX=8;
    Amp3=(int)(random(15)+5);
    d3T=0;
  }
  // COllISION WITH ENEMY 2
  if (d2X<c3X+50 && c3Y+20>d2Y && c3Y<d2Y+20) {
    pageNumber=1;
    count4=0;
    //main character vars
    c3X=20;
    c3Y=120;
    //enemy 1 vars
    dX=410;
    dY=80;
    dVX=8;
    Amp1=(int)(random(20)+5);
    dT=0;

    //enemy 2 vars
    d2X=490;
    d2Y=130;
    d2VX=8;
    Amp2=(int)(random(5)+5);
    d2T=0;

    //enemy 3 vars
    d3X=450;
    d3Y=210;
    d3VX=8;
    Amp3=(int)(random(15)+5);
    d3T=0;
  } 
  // COllISION WITH ENEMY 3
  if (d3X<c3X+50 && c3Y+20>d3Y && c3Y<d3Y+20) {
    pageNumber=1;
    count4=0;
    //main character vars
    c3X=20;
    c3Y=120;
    //enemy 1 vars
    dX=410;
    dY=80;
    dVX=8;
    Amp1=(int)(random(20)+5);
    dT=0;

    //enemy 2 vars
    d2X=490;
    d2Y=130;
    d2VX=8;
    Amp2=(int)(random(5)+5);
    d2T=0;

    //enemy 3 vars
    d3X=450;
    d3Y=210;
    d3VX=8;
    Amp3=(int)(random(15)+5);
    d3T=0;
  }
  fill(0, alpha4);
  stroke(0, alpha4);
  ellipse(400, 280, 40, 40);
  if (count4>10) {
    dVX=0;
    d2VX=0;
    d3VX=0;
    alpha4=255;
  }
  else{
      alpha4=0;
    }
}