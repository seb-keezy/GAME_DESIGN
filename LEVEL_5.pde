float c4X=20;
float c4Y=120;
float c4difX = 0.0; 
float c4difY = 0.0; 
boolean co = false;
boolean lo = false;
int alpha5;
//enemy 1 vars
float fX=410;
float fY=80;
float fVX=8;
int Ap1=(int)(random(20)+5);
float fT;

//enemy 2 vars
float f2X=490;
float f2Y=130;
float f2VX=8;
int Ap2=(int)(random(5)+5);
float f2T;

//enemy 3 vars
float f3X=450;
float f3Y=210;
float f3VX=8;
int Ap3=(int)(random(15)+5);
float f3T;
//enemy 4 vars
float f4X=450;
float f4Y=210;
float f4VX=8;
int Ap4=(int)(random(15)+5);
float f4T;
//enemy 5 vars
float f5X=450;
float f5Y=210;
float f5VX=8;
int Ap5=(int)(random(15)+5);
float f5T;
int count5=0;
void page7() {
  count5++;
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

  if (c4Y<50) {
    c4Y=50;
  }
  if (c4Y+20>250) {
    c4Y=230;
  }
  //main character
  fill(#333FA7, opacity);
  rect(c4X, c4Y, 50, 20);
  if (mouseX>c4X && mouseX<c4X+50 && mouseY>c4Y && mouseY<c4Y+20) {
    co = true;  
    if (!lo) {
    }
  } else {
    co = false;
  }
  //enemy 1
  fill(#FF0000);
  rect(fX, fY, 50, 20);
  fT+=.1;
  fX-=fVX;
  fY=80+Ap1*sin(fT);

  //enemy 2
  f2T+=.3;
  rect(f2X, f2Y, 50, 20);
  f2Y=145+Ap2*sin(f2T);
  f2X-=f2VX;

  //enemy 3
  f3T+=.075;
  rect(f3X, f3Y, 50, 20);
  f3Y=210+Ap3*sin(f3T);
  f3X-=f3VX;
  if (fX<c4X-80) {
    fX=520;
    Ap1=(int)(random(20)+5);
    fVX=(int)random(15)+8;
  }
  //enemy 4
  f4T+=.075;
  rect(f4X, f4Y, 50, 20);
  f4Y=160+Ap4*sin(f4T);
  f3X-=f3VX;
  if (fX<c4X-80) {
    fX=520;
    Ap4=(int)(random(20)+5);
    fVX=(int)random(15)+8;
  }
  //enemy 5
  f5T+=.075;
  rect(f5X, f5Y, 50, 20);
  f5Y=50+Ap5*sin(f5T);
  f5X-=f5VX;
  if (fX<c4X-80) {
    fX=520;
    Ap5=(int)(random(20)+5);
    fVX=(int)random(15)+8;
  }
  if (f2X<c4X-80) {
    f2X=520;
    Ap2=(int)(random(5)+5);
    f2VX=(int)random(15)+8;
  }
  if (f3X<c4X-80) {
    f3X=520;
    Ap3=(int)(random(15)+5);
    f3VX=(int)random(15)+8;
  }

  // COllISION WITH ENEMY 1
  if (fX<c4X+50 && c4Y+20>fY && c4Y<fY+20) {
    pageNumber=1;
    count5=0;
    //main character vars
    c4X=20;
    c4Y=120;
    //enemy 1 vars
    fX=410;
    fY=80;
    fVX=8;
    Ap1=(int)(random(20)+5);
    fT=0;

    //enemy 2 vars
    f2X=490;
    f2Y=130;
    f2VX=8;
    Ap2=(int)(random(5)+5);
    f2T=0;

    //enemy 3 vars
    f3X=450;
    f3Y=210;
    f3VX=8;
    Ap3=(int)(random(15)+5);
    f3T=0;
  }
  // COllISION WITH ENEMY 2
  if (f2X<c4X+50 && c4Y+20>f2Y && c4Y<f2Y+20) {
    pageNumber=1;
    count5=0;
    //main character vars
    c4X=20;
    c4Y=120;
    //enemy 1 vars
    fX=410;
    fY=80;
    fVX=8;
    Ap1=(int)(random(20)+5);
    fT=0;

    //enemy 2 vars
    f2X=490;
    f2Y=130;
    f2VX=8;
    Ap2=(int)(random(5)+5);
    f2T=0;

    //enemy 3 vars
    f3X=450;
    f3Y=210;
    d3VX=8;
    Ap3=(int)(random(15)+5);
    f3T=0;
  } 
  // COllISION WITH ENEMY 3
  if (f3X<c4X+50 && c4Y+20>f3Y && c4Y<f3Y+20) {
    pageNumber=1;
    count5=0;
    //main character vars
    c4X=20;
    c4Y=120;
    //enemy 1 vars
    fX=410;
    fY=80;
    fVX=8;
    Ap1=(int)(random(20)+5);
    fT=0;

    //enemy 2 vars
    f2X=490;
    f2Y=130;
    f2VX=8;
    Ap2=(int)(random(5)+5);
    f2T=0;

    //enemy 3 vars
    f3X=450;
    f3Y=210;
    f3VX=8;
    Ap3=(int)(random(15)+5);
    f3T=0;
        //enemy 4 vars
    f4X=450;
    f4Y=210;
    f4VX=8;
    Ap4=(int)(random(15)+5);
    f4T=0;
    //enemy 5 vars
    f5X=450;
    f5Y=210;
    f5VX=8;
    Ap5=(int)(random(15)+5);
    f5T=0;
  }
  // COllISION WITH ENEMY 2
  if (f2X<c4X+50 && c4Y+20>f2Y && c4Y<f2Y+20) {
    pageNumber=1;
    count5=0;
    //main character vars
    c4X=20;
    c4Y=120;
    //enemy 1 vars
    fX=410;
    fY=80;
    fVX=8;
    Ap1=(int)(random(20)+5);
    fT=0;

    //enemy 2 vars
    f2X=490;
    f2Y=130;
    f2VX=8;
    Ap2=(int)(random(5)+5);
    f2T=0;

    //enemy 3 vars
    f3X=450;
    f3Y=210;
    d3VX=8;
    Ap3=(int)(random(15)+5);
    f3T=0;
        //enemy 4 vars
    f4X=450;
    f4Y=210;
    f4VX=8;
    Ap4=(int)(random(15)+5);
    f4T=0;
    //enemy 5 vars
    f5X=450;
    f5Y=210;
    f5VX=8;
    Ap5=(int)(random(15)+5);
    f5T=0;
  } 
  // COllISION WITH ENEMY 4
  if (f4X<c4X+50 && c4Y+20>f4Y && c4Y<f4Y+20) {
    pageNumber=1;
    count5=0;
    //main character vars
    c4X=20;
    c4Y=120;
    //enemy 1 vars
    fX=410;
    fY=80;
    fVX=8;
    Ap1=(int)(random(20)+5);
    fT=0;

    //enemy 2 vars
    f2X=490;
    f2Y=130;
    f2VX=8;
    Ap2=(int)(random(5)+5);
    f2T=0;

    //enemy 3 vars
    f3X=450;
    f3Y=210;
    f3VX=8;
    Ap3=(int)(random(15)+5);
    f3T=0;
    //enemy 4 vars
    f4X=450;
    f4Y=210;
    f4VX=8;
    Ap4=(int)(random(15)+5);
    f4T=0;
    //enemy 5 vars
    f5X=450;
    f5Y=210;
    f5VX=8;
    Ap5=(int)(random(15)+5);
    f5T=0;
  }
  // COllISION WITH ENEMY 5
  if (f5X<c4X+50 && c4Y+20>f5Y && c4Y<f5Y+20) {
    pageNumber=1;
    count5=0;
    //main character vars
    c4X=20;
    c4Y=120;
    //enemy 1 vars
    fX=410;
    fY=80;
    fVX=8;
    Ap1=(int)(random(20)+5);
    fT=0;

    //enemy 2 vars
    f2X=490;
    f2Y=130;
    f2VX=8;
    Ap2=(int)(random(5)+5);
    f2T=0;

    //enemy 3 vars
    f3X=450;
    f3Y=210;
    f3VX=8;
    Ap3=(int)(random(15)+5);
    f3T=0;
    //enemy 4 vars
    f4X=450;
    f4Y=210;
    f4VX=8;
    Ap4=(int)(random(15)+5);
    f4T=0;
    //enemy 5 vars
    f5X=450;
    f5Y=210;
    f5VX=8;
    Ap5=(int)(random(15)+5);
    f5T=0;
  }
  fill(0, alpha5);
  stroke(0, alpha5);
  ellipse(400, 280, 40, 40);
  if (count5>300) {
    fVX=0;
    f2VX=0;
    f3VX=0;
    alpha5=255;
  } else {
    alpha5=0;
  }
}