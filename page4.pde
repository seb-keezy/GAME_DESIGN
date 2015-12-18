float bX=100;
float bY=310;
void page4() {
  background(255);
  fill(#989696);
  ellipse(100, 160, 480, 500);
  fill(255);
  ellipse(-100, 160, 480, 480);
  cT+=.1;
  fill(#FF0000);
  rect(bX, bY, 20, 40);
  bY=145+210*sin(cT);
  bX=80+200*cos(cT);
  //ellipse(bY, bY, 20, 20);
}