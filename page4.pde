float bX=100;
float bY=310;
float b2X=140;
float b2Y=310;
float b3X=180;
float b3Y=310;
float c2X=150;
float c2Y=260;
//round about
void page4() {
  background(255);
  fill(#989696);
  ellipse(100, 160, 480, 500);
  fill(255);
  ellipse(-100, 160, 480, 480);
  //enemy 1B movement
  cT+=.1;
  fill(#FF0000);
  rect(bX, bY, 20, 40);
  bY=145+210*sin(cT);
  bX=80+200*cos(cT);
  //enemy 2B movement
  c2T+=.05;
  rect(b2X, b2Y, 20, 40);
  b2Y=145+210*sin(c2T);
  b2X=40+200*cos(c2T);
  //enemy 3B movement
  c3T+=.2;
  rect(b3X, b3Y, 20, 40);
  b3Y=145+210*sin(c3T);
  b3X=0+200*cos(c3T);
  fill(#0000FF);
  rect(c2X,c2Y,20,40);
  //
}