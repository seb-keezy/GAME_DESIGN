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
//enemy 4 vars
float d4X=450;
float d4Y=140;
float d4VX=8;
int Amp4=(int)(random(15)+5);
float d4T;
int count4=0;
int s5X=240;
int s6X=780;
void page5() {
  count4++;
  background(#FFFFFF);
  //street
  fill(#8E8282);
  rect(0, 50, 480, 200);

  stroke(0);
  strokeWeight(5);
  line(s5X, 135*.2, s5X+20, 135*.2);
  line(s5X, 185*.2, s5X+20, 185*.2);
  line(s5X+45, 140*.2, s5X+65, 165*.2);
  line(s5X+45, 190*.2, s5X+65, 215*.2);
  line(s5X+90, 175*.2, s5X+110, 205*.2);
  line(s5X+90, 225*.2, s5X+110, 250*.2);
  line(s5X+135, 220*.2, s5X+155, 220*.2);
  line(s5X+135, 265*.2, s5X+155, 265*.2);
  line(s5X+180, 250*.2, s5X+200, 225*.2);
  line(s5X+180, 205*.2, s5X+200, 180*.2);
  line(s5X+225, 165*.2, s5X+245, 140*.2);
  line(s5X+225, 210*.2, s5X+245, 185*.2);

  line(s5X-25, 140*.2, s5X-45, 165*.2);
  line(s5X-25, 190*.2, s5X-45, 215*.2);
  line(s5X-70, 175*.2, s5X-90, 205*.2);
  line(s5X-70, 225*.2, s5X-90, 250*.2);
  line(s5X-115, 220*.2, s5X-135, 220*.2);
  line(s5X-115, 265*.2, s5X-135, 265*.2);
  line(s5X-160, 250*.2, s5X-180, 225*.2);
  line(s5X-160, 205*.2, s5X-180, 180*.2);
  line(s5X-205, 165*.2, s5X-225, 140*.2);
  line(s5X-205, 210*.2, s5X-225, 185*.2);
  strokeWeight(1);
  fill(#CECECE);
  beginShape();
  vertex(s5X+20, 300*.2);
  vertex(s5X+45, 300*.2);
  vertex(s5X+45, 75*.2);
  vertex(s5X+20, 25*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s5X+65, 300*.2);
  vertex(s5X+90, 300*.2);
  vertex(s5X+90, 125*.2);
  vertex(s5X+65, 75*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s5X+110, 300*.2);
  vertex(s5X+135, 300*.2);
  vertex(s5X+135, 175*.2);
  vertex(s5X+110, 125*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s5X+155, 300*.2);
  vertex(s5X+180, 300*.2);
  vertex(s5X+180, 125*.2);
  vertex(s5X+155, 175*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s5X+200, 300*.2);
  vertex(s5X+225, 300*.2);
  vertex(s5X+225, 75*.2);
  vertex(s5X+200, 125*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s5X+245, 300*.2);
  vertex(s5X+270, 300*.2);
  vertex(s5X+270, 25*.2);
  vertex(s5X+245, 75*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s5X-25, 300*.2);
  vertex(s5X, 300*.2);
  vertex(s5X, 25*.2);
  vertex(s5X-25, 75*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s5X-45, 300*.2);
  vertex(s5X-70, 300*.2);
  vertex(s5X-70, 125*.2);
  vertex(s5X-45, 75*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s5X-115, 300*.2);
  vertex(s5X-90, 300*.2);
  vertex(s5X-90, 125*.2);
  vertex(s5X-115, 175*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s5X-135, 300*.2);
  vertex(s5X-160, 300*.2);
  vertex(s5X-160, 125*.2);
  vertex(s5X-135, 175*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s5X-180, 300*.2);
  vertex(s5X-205, 300*.2);
  vertex(s5X-205, 75*.2);
  vertex(s5X-180, 125*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s5X-225, 300*.2);
  vertex(s5X-250, 300*.2);
  vertex(s5X-250, 25*.2);
  vertex(s5X-225, 75*.2);
  endShape(CLOSE);


  strokeWeight(5);
  line(s6X, 135*.2, s6X+20, 135*.2);
  line(s6X, 185*.2, s6X+20, 185*.2);
  line(s6X+45, 140*.2, s6X+65, 165*.2);
  line(s6X+45, 190*.2, s6X+65, 215*.2);
  line(s6X+90, 175*.2, s6X+110, 205*.2);
  line(s6X+90, 225*.2, s6X+110, 250*.2);
  line(s6X+135, 220*.2, s6X+155, 220*.2);
  line(s6X+135, 265*.2, s6X+155, 265*.2);
  line(s6X+180, 250*.2, s6X+200, 225*.2);
  line(s6X+180, 205*.2, s6X+200, 180*.2);
  line(s6X+225, 165*.2, s6X+245, 140*.2);
  line(s6X+225, 210*.2, s6X+245, 185*.2);

  line(s6X-25, 140*.2, s6X-45, 165*.2);
  line(s6X-25, 190*.2, s6X-45, 215*.2);
  line(s6X-70, 175*.2, s6X-90, 205*.2);
  line(s6X-70, 225*.2, s6X-90, 250*.2);
  line(s6X-115, 220*.2, s6X-135, 220*.2);
  line(s6X-115, 265*.2, s6X-135, 265*.2);
  line(s6X-160, 250*.2, s6X-180, 225*.2);
  line(s6X-160, 205*.2, s6X-180, 180*.2);
  line(s6X-205, 165*.2, s6X-225, 140*.2);
  line(s6X-205, 210*.2, s6X-225, 185*.2);
  strokeWeight(1);
  fill(#CECECE);
  beginShape();
  vertex(s6X+20, 300*.2);
  vertex(s6X+45, 300*.2);
  vertex(s6X+45, 75*.2);
  vertex(s6X+20, 25*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s6X+65, 300*.2);
  vertex(s6X+90, 300*.2);
  vertex(s6X+90, 125*.2);
  vertex(s6X+65, 75*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s6X+110, 300*.2);
  vertex(s6X+135, 300*.2);
  vertex(s6X+135, 175*.2);
  vertex(s6X+110, 125*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s6X+155, 300*.2);
  vertex(s6X+180, 300*.2);
  vertex(s6X+180, 125*.2);
  vertex(s6X+155, 175*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s6X+200, 300*.2);
  vertex(s6X+225, 300*.2);
  vertex(s6X+225, 75*.2);
  vertex(s6X+200, 125*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s6X+245, 300*.2);
  vertex(s6X+270, 300*.2);
  vertex(s6X+270, 25*.2);
  vertex(s6X+245, 75*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s6X-25, 300*.2);
  vertex(s6X, 300*.2);
  vertex(s6X, 25*.2);
  vertex(s6X-25, 75*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s6X-45, 300*.2);
  vertex(s6X-70, 300*.2);
  vertex(s6X-70, 125*.2);
  vertex(s6X-45, 75*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s6X-115, 300*.2);
  vertex(s6X-90, 300*.2);
  vertex(s6X-90, 125*.2);
  vertex(s6X-115, 175*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s6X-135, 300*.2);
  vertex(s6X-160, 300*.2);
  vertex(s6X-160, 125*.2);
  vertex(s6X-135, 175*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s6X-180, 300*.2);
  vertex(s6X-205, 300*.2);
  vertex(s6X-205, 75*.2);
  vertex(s6X-180, 125*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s6X-225, 300*.2);
  vertex(s6X-250, 300*.2);
  vertex(s6X-250, 25*.2);
  vertex(s6X-225, 75*.2);
  endShape(CLOSE);
  s5X-=5;
  s6X-=5;
  if (s5X+350<0) {
    s5X=720;
  }
  if (s6X+350<0) {
    s6X=720;
  }

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

  strokeWeight(3);
  stroke(#000000);
  strokeWeight(1);
  fill(#333FA7);
  beginShape();
  vertex(c3X, c3Y+20); //380 //120
  vertex(c3X, c3Y+10); //350 //110
  vertex(c3X+5, c3Y); //340 100
  vertex(c3X+25, c3Y); //340 100
  vertex(c3X+37.5, c3Y+10); //360 110
  vertex(c3X+50, c3Y+10); //360 110
  vertex(c3X+50, c3Y+20); //120
  endShape(CLOSE);
  fill(#FFFFFF);
  beginShape();
  vertex(c3X+4, c3Y+10);
  vertex(c3X+4, c3Y+10);
  vertex(c3X+6.5, c3Y+5);
  vertex(c3X+6.5, c3Y+10);
  endShape(CLOSE);
  fill(#000000);
  ellipse(c3X+12.5, c3Y+20, 10, 10);
  ellipse(c3X+30, c3Y+20, 10, 10);
  fill(#BCB8B8);
  ellipse(c3X+12.5, c3Y+20, 6, 6);
  ellipse(c3X+30, c3Y+20, 6, 6);
  fill(#FFFFFF);
  beginShape();
  vertex(c3X+11, c3Y+5);
  vertex(c3X+11, c3Y+10);
  vertex(c3X+22.5, c3Y+10);
  vertex(c3X+22.5, c3Y+5);
  endShape(CLOSE);
  beginShape();
  vertex(c3X+25, c3Y+5);
  vertex(c3X+25, c3Y+10);
  vertex(c3X+25, c3Y+10);
  endShape(CLOSE);
  fill(#958585);
  quad(c3X+50, c3Y+15, c3X+50, c3Y+20, c3X+45, c3Y+20, c3X+45, c3Y+15);
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
  dY=80+Amp1*sin(dT);

  //enemy 2
  d2T+=.3;
  rect(d2X, d2Y, 50, 20);
  d2Y=145+Amp2*sin(d2T);
  d2X-=d2VX;

  //enemy 3
  d3T+=.075;
  rect(d3X, d3Y, 50, 20);
  d3Y=210+Amp3*sin(d3T);
  d3X-=d3VX;

  //enemy 4
  d4T+=.04;
  rect(d4X, d4Y, 50, 20);
  d4Y=160+Amp4*sin(d4T);
  d4X-=d4VX;
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
  if (d4X<c3X-80) {
    d4X=520;
    Amp4=(int)(random(15)+5);
    d4VX=(int)random(15)+8;
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

    d4X=450;
    d4Y=210;
    d4VX=8;
    Amp4=(int)(random(15)+5);
    d4T=0;
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

    d4X=450;
    d4Y=210;
    d4VX=8;
    Amp4=(int)(random(15)+5);
    d4T=0;
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

    d4X=450;
    d4Y=210;
    d4VX=8;
    Amp4=(int)(random(15)+5);
    d4T=0;
  }
  // COllISION WITH ENEMY 4
  if (d4X<c3X+50 && c3Y+20>d4Y && c3Y<d4Y+20) {
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

    d4X=450;
    d4Y=210;
    d4VX=8;
    Amp4=(int)(random(15)+5);
    d4T=0;
  }
  fill(0, alpha4);
  stroke(0, alpha4);
  ellipse(400, 280, 40, 40);
  if (count4>300) {
    dVX=0;
    d2VX=0;
    d3VX=0;
    alpha4=255;
  } else {
    alpha4=0;
  }
}