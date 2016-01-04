//level 2
//enemy 1 vars
float bX=100;
float bY=310;
float bT=PI;
//enemy 2 vars
float b2X=140;
float b2Y=310;
float b2T=PI/2;
//enemy 3 vars
float b3X=180;
float b3Y=310;
float b3T=PI;
//enemy 4 vars
float b4X=140;
float b4Y=250;
float b4T=.75*PI;
//enemy 5 vars
float b5X=100;
float b5Y=250;
float b5T=-.75*PI;
//enemy 6 vars
float b6X=100;
float b6Y=150;
float b6T=PI;
//main character, level 2
float c2X=150;
float c2Y=260;
float count2;
//spot drag varriables
float c2difX = 0.0; 
float c2difY = 0.0; 
boolean corp = false;
boolean lose = false;
//round about
void page4() {

  if (c2X+20>415) {
    c2X=395;
  }
  if (c2X<118) {
    c2X=118;
  }
  count2++;
  stroke(0);
  background(255);
  //street
  fill(#989696);
  ellipse(100, 160, 700, 650);
  fill(255);
  ellipse(-100, 160, 480, 480);
  //enemy 1B movement
  bT+=.1;
  fill(#FF0000);
  rect(bX, bY, 20, 30);
  bY=145+210*sin(bT);
  bX=80+200*cos(bT);
  //enemy 2B movement
  b2T+=.05;
  rect(b2X, b2Y, 20, 30);
  b2Y=145+210*sin(b2T);
  b2X=40+300*cos(b2T);
  //enemy 3B movement
  b3T+=.075;
  rect(b3X, b3Y, 20, 30);
  b3Y=145+210*sin(b3T);
  b3X=0+250*cos(b3T);
  //enemy 4B movement
  b4T+=.04;
  rect(b4X, b4Y, 20, 30);
  b4Y=110+250*sin(b4T);
  b4X=90+300*cos(b4T);
  //enemy 5B movement
  b5T+=.075;
  rect(b5X, b5Y, 20, 30);
  b5Y=110+250*sin(b5T);
  b5X=60+350*cos(b5T);
  //enemy 6B movement
  b6T+=.075;
  rect(b6X, b6Y, 20, 30);
  b6Y=110+250*sin(b6T);
  b6X=60+110*cos(b6T);
  //good character
  fill(#0000FF);
  rect(c2X, c2Y, 20, 40);
  if (mouseX>c2X && mouseX<c2X+20 && mouseY>c2Y && mouseY<c2Y+40) {
    corp = true;  
    if (!lose) {
    }
  } else {
    corp = false;
  }
  textSize(10);
  text(count2, 100, 100);
  if (bY+30>c3Y && bX+20>c3X && bX<c3X+20) {
    count2=0;
    pageNumber=1;
  }
  if (b2Y+30>c3Y && b2X+20>c3X && b2X<c3X+20) {
    count2=0;
    pageNumber=1;
  }
  if (b3Y+30>c3Y && b3X+20>c3X && b3X<c3X+20) {
    count2=0;
    pageNumber=1;
  }
  if (b4Y+30>c3Y && b4X+20>c3X && b4X<c3X+20) {
    count2=0;
    pageNumber=1;
  }
  if (b5Y+30>c3Y && b5X+20>c3X && b5X<c3X+20) {
    count2=0;
    pageNumber=1;
  }
  if (b6Y+30>c3Y && b6X+20>c3X && b6X<c3X+20) {
    count2=0;
    pageNumber=1;
  }
}