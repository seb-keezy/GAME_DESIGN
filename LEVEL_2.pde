float c1difX = 0.0; 
float c1difY = 0.0; 
boolean core = false;
boolean lock = false;
int count2;
float alpha2;
int s3X=240;
int s4X=780;
void page3() {
  if (carY<50) {
    carY=50;
  }
  if (carY+20>250) {
    carY=230;
  }
  count2++;
  background(#FFFFFF);
  //street
  fill(#8E8282);
  rect(0, 50, 480, 200);
  stroke(0);
  strokeWeight(5);
  line(s3X, 135*.2, s3X+20, 135*.2);
  line(s3X, 185*.2, s3X+20, 185*.2);
  line(s3X+45, 140*.2, s3X+65, 165*.2);
  line(s3X+45, 190*.2, s3X+65, 215*.2);
  line(s3X+90, 175*.2, s3X+110, 205*.2);
  line(s3X+90, 225*.2, s3X+110, 250*.2);
  line(s3X+135, 220*.2, s3X+155, 220*.2);
  line(s3X+135, 265*.2, s3X+155, 265*.2);
  line(s3X+180, 250*.2, s3X+200, 225*.2);
  line(s3X+180, 205*.2, s3X+200, 180*.2);
  line(s3X+225, 165*.2, s3X+245, 140*.2);
  line(s3X+225, 210*.2, s3X+245, 185*.2);

  line(s3X-25, 140*.2, s3X-45, 165*.2);
  line(s3X-25, 190*.2, s3X-45, 215*.2);
  line(s3X-70, 175*.2, s3X-90, 205*.2);
  line(s3X-70, 225*.2, s3X-90, 250*.2);
  line(s3X-115, 220*.2, s3X-135, 220*.2);
  line(s3X-115, 265*.2, s3X-135, 265*.2);
  line(s3X-160, 250*.2, s3X-180, 225*.2);
  line(s3X-160, 205*.2, s3X-180, 180*.2);
  line(s3X-205, 165*.2, s3X-225, 140*.2);
  line(s3X-205, 210*.2, s3X-225, 185*.2);
  strokeWeight(1);
  fill(#CECECE);
  beginShape();
  vertex(s3X+20, 300*.2);
  vertex(s3X+45, 300*.2);
  vertex(s3X+45, 75*.2);
  vertex(s3X+20, 25*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s3X+65, 300*.2);
  vertex(s3X+90, 300*.2);
  vertex(s3X+90, 125*.2);
  vertex(s3X+65, 75*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s3X+110, 300*.2);
  vertex(s3X+135, 300*.2);
  vertex(s3X+135, 175*.2);
  vertex(s3X+110, 125*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s3X+155, 300*.2);
  vertex(s3X+180, 300*.2);
  vertex(s3X+180, 125*.2);
  vertex(s3X+155, 175*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s3X+200, 300*.2);
  vertex(s3X+225, 300*.2);
  vertex(s3X+225, 75*.2);
  vertex(s3X+200, 125*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s3X+245, 300*.2);
  vertex(s3X+270, 300*.2);
  vertex(s3X+270, 25*.2);
  vertex(s3X+245, 75*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s3X-25, 300*.2);
  vertex(s3X, 300*.2);
  vertex(s3X, 25*.2);
  vertex(s3X-25, 75*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s3X-45, 300*.2);
  vertex(s3X-70, 300*.2);
  vertex(s3X-70, 125*.2);
  vertex(s3X-45, 75*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s3X-115, 300*.2);
  vertex(s3X-90, 300*.2);
  vertex(s3X-90, 125*.2);
  vertex(s3X-115, 175*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s3X-135, 300*.2);
  vertex(s3X-160, 300*.2);
  vertex(s3X-160, 125*.2);
  vertex(s3X-135, 175*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s3X-180, 300*.2);
  vertex(s3X-205, 300*.2);
  vertex(s3X-205, 75*.2);
  vertex(s3X-180, 125*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s3X-225, 300*.2);
  vertex(s3X-250, 300*.2);
  vertex(s3X-250, 25*.2);
  vertex(s3X-225, 75*.2);
  endShape(CLOSE);


  strokeWeight(5);
  line(s4X, 135*.2, s4X+20, 135*.2);
  line(s4X, 185*.2, s4X+20, 185*.2);
  line(s4X+45, 140*.2, s4X+65, 165*.2);
  line(s4X+45, 190*.2, s4X+65, 215*.2);
  line(s4X+90, 175*.2, s4X+110, 205*.2);
  line(s4X+90, 225*.2, s4X+110, 250*.2);
  line(s4X+135, 220*.2, s4X+155, 220*.2);
  line(s4X+135, 265*.2, s4X+155, 265*.2);
  line(s4X+180, 250*.2, s4X+200, 225*.2);
  line(s4X+180, 205*.2, s4X+200, 180*.2);
  line(s4X+225, 165*.2, s4X+245, 140*.2);
  line(s4X+225, 210*.2, s4X+245, 185*.2);

  line(s4X-25, 140*.2, s4X-45, 165*.2);
  line(s4X-25, 190*.2, s4X-45, 215*.2);
  line(s4X-70, 175*.2, s4X-90, 205*.2);
  line(s4X-70, 225*.2, s4X-90, 250*.2);
  line(s4X-115, 220*.2, s4X-135, 220*.2);
  line(s4X-115, 265*.2, s4X-135, 265*.2);
  line(s4X-160, 250*.2, s4X-180, 225*.2);
  line(s4X-160, 205*.2, s4X-180, 180*.2);
  line(s4X-205, 165*.2, s4X-225, 140*.2);
  line(s4X-205, 210*.2, s4X-225, 185*.2);
  strokeWeight(1);
  fill(#CECECE);
  beginShape();
  vertex(s4X+20, 300*.2);
  vertex(s4X+45, 300*.2);
  vertex(s4X+45, 75*.2);
  vertex(s4X+20, 25*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s4X+65, 300*.2);
  vertex(s4X+90, 300*.2);
  vertex(s4X+90, 125*.2);
  vertex(s4X+65, 75*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s4X+110, 300*.2);
  vertex(s4X+135, 300*.2);
  vertex(s4X+135, 175*.2);
  vertex(s4X+110, 125*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s4X+155, 300*.2);
  vertex(s4X+180, 300*.2);
  vertex(s4X+180, 125*.2);
  vertex(s4X+155, 175*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s4X+200, 300*.2);
  vertex(s4X+225, 300*.2);
  vertex(s4X+225, 75*.2);
  vertex(s4X+200, 125*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s4X+245, 300*.2);
  vertex(s4X+270, 300*.2);
  vertex(s4X+270, 25*.2);
  vertex(s4X+245, 75*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s4X-25, 300*.2);
  vertex(s4X, 300*.2);
  vertex(s4X, 25*.2);
  vertex(s4X-25, 75*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s4X-45, 300*.2);
  vertex(s4X-70, 300*.2);
  vertex(s4X-70, 125*.2);
  vertex(s4X-45, 75*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s4X-115, 300*.2);
  vertex(s4X-90, 300*.2);
  vertex(s4X-90, 125*.2);
  vertex(s4X-115, 175*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s4X-135, 300*.2);
  vertex(s4X-160, 300*.2);
  vertex(s4X-160, 125*.2);
  vertex(s4X-135, 175*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s4X-180, 300*.2);
  vertex(s4X-205, 300*.2);
  vertex(s4X-205, 75*.2);
  vertex(s4X-180, 125*.2);
  endShape(CLOSE);
  beginShape();
  vertex(s4X-225, 300*.2);
  vertex(s4X-250, 300*.2);
  vertex(s4X-250, 25*.2);
  vertex(s4X-225, 75*.2);
  endShape(CLOSE);
  s3X-=5;
  s4X-=5;
  if (s3X+350<0) {
    s3X=720;
  }
  if (s4X+350<0) {
    s4X=720;
  }

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

  strokeWeight(3);
  stroke(#000000);
  strokeWeight(1);
  fill(#333FA7);
  beginShape();
  vertex(carX, carY+20); //380 //120
  vertex(carX, carY+10); //350 //110
  vertex(carX+5, carY); //340 100
  vertex(carX+25, carY); //340 100
  vertex(carX+37.5, carY+10); //360 110
  vertex(carX+50, carY+10); //360 110
  vertex(carX+50, carY+20); //120
  endShape(CLOSE);
  fill(#FFFFFF);
  beginShape();
  vertex(carX+4, carY+10);
  vertex(carX+4, carY+10);
  vertex(carX+6.5, carY+5);
  vertex(carX+6.5, carY+10);
  endShape(CLOSE);
  fill(#000000);
  ellipse(carX+12.5, carY+20, 10, 10);
  ellipse(carX+30, carY+20, 10, 10);
  fill(#BCB8B8);
  ellipse(carX+12.5, carY+20, 6, 6);
  ellipse(carX+30, carY+20, 6, 6);
  fill(#FFFFFF);
  beginShape();
  vertex(carX+11, carY+5);
  vertex(carX+11, carY+10);
  vertex(carX+22.5, carY+10);
  vertex(carX+22.5, carY+5);
  endShape(CLOSE);
  beginShape();
  vertex(carX+25, carY+5);
  vertex(carX+25, carY+10);
  vertex(carX+25, carY+10);
  endShape(CLOSE);
  fill(#958585);
  quad(carX+50, carY+15, carX+50, carY+20, carX+45, carY+20, carX+45, carY+15);
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
    count2=0;
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
    count2=0;
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
    count2=0;
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
  text(count2, 100, 100);
  //Button for next page
  fill(0, alpha2);
  stroke(0, alpha2);
  ellipse(400, 280, 40, 40);
  if (count2>500) {
    alpha2=255;
    aVX=0;
    a2VX=0;
    a3VX=0;
  } else {
    alpha2=0;
  }

  if (mouseX>carX && mouseX<carX+50 && mouseY>carY && mouseY<carY+20) {
    core = true;  
    if (!lock) {
    }
  } else {
    core = false;
  }
}