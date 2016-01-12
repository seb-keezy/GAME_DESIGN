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
float count3;
//spot drag varriables
float c2difX = 0.0; 
float c2difY = 0.0; 
boolean corp = false;
boolean lose = false;
float alpha3;
//line vars
float lX;
float lY;
float lT;

float l2X;
float l2Y;
float l2T=PI/4;

float l3X;
float l3Y;
float l3T=PI/2;

float l4X;
float l4Y;
float l4T=.75*PI;

float l5X;
float l5Y;
float l5T=PI;

float l6X;
float l6Y;
float l6T=1.25*PI;

float l7X;
float l7Y;
float l7T=1.5*PI;

float l8X;
float l8Y;
float l8T=1.75*PI;

//round about
void page4() {

  if (c2X+20>415) {
    c2X=395;
  }
  if (c2X<118) {
    c2X=118;
  }
  
  count3++;
  stroke(0);
  background(255);
  //street
  fill(#989696);
  ellipse(100, 160, 700, 650);
  fill(255);
  ellipse(-100, 160, 480, 480);
  lT+=.07;
  l2T+=.07;
  l3T+=.07;
  l4T+=.07;
  l5T+=.07;
  l6T+=.07;
  l7T+=.07;
  l8T+=.07;
  stroke(#ffff00);
  strokeWeight(5);
  line(lX,lY,lX,lY+40);
  line(l2X,l2Y,l2X,l2Y+40);
  line(l3X,l3Y,l3X,l3Y+40);
  line(l4X,l4Y,l4X,l4Y+40);
  line(l5X,l5Y,l5X,l5Y+40);
  line(l6X,l6Y,l6X,l6Y+40);
  line(l7X,l7Y,l7X,l7Y+40);
  line(l8X,l8Y,l8X,l8Y+40);
  
  line(lX+75,lY,lX+75,lY+40);
  line(l2X+75,l2Y,l2X+75,l2Y+40);
  line(l3X+75,l3Y,l3X+75,l3Y+40);
  line(l4X+75,l4Y,l4X+75,l4Y+40);
  line(l5X+75,l5Y,l5X+75,l5Y+40);
  line(l6X+75,l6Y,l6X+75,l6Y+40);
  line(l7X+75,l7Y,l7X+75,l7Y+40);
  line(l8X+75,l8Y,l8X+75,l8Y+40);
  
  line(lX+150,lY,lX+150,lY+40);
  line(l2X+150,l2Y,l2X+150,l2Y+40);
  line(l3X+150,l3Y,l3X+150,l3Y+40);
  line(l4X+150,l4Y,l4X+150,l4Y+40);
  line(l5X+150,l5Y,l5X+150,l5Y+40);
  line(l6X+150,l6Y,l6X+150,l6Y+40);
  line(l7X+150,l7Y,l7X+150,l7Y+40);
  line(l8X+150,l8Y,l8X+150,l8Y+40);
  
  lX=5+220*cos(lT);
  l2X=5+220*cos(l2T);
  l3X=5+220*cos(l3T);
  l4X=5+220*cos(l4T);
  l5X=5+220*cos(l5T);
  l6X=5+220*cos(l6T);
  l7X=5+220*cos(l7T);
  l8X=5+220*cos(l8T);
  
  lY=175+250*sin(lT);
  l2Y=175+250*sin(l2T);
  l3Y=175+250*sin(l3T);
  l4Y=175+250*sin(l4T);
  l5Y=175+250*sin(l5T);
  l6Y=175+250*sin(l6T);
  l7Y=175+250*sin(l7T);
  l8Y=175+250*sin(l8T);
  stroke(0);
  strokeWeight(1);
  //enemy 1B movement
  bT+=.1;
  fill(#FF0000);
  rect(bX, bY, 20, 30);
  bY=145+210*sin(bT);
  bX=80+200*cos(bT); // Collisions work
  //enemy 2B movement
  b2T+=.025;
  rect(b2X, b2Y, 20, 30);
  b2Y=145+210*sin(b2T);
  b2X=40+300*cos(b2T); // Collisions work
  //enemy 3B movement
  b3T+=.0375;
  rect(b3X, b3Y, 20, 30);
  b3Y=145+210*sin(b3T); // Collisions work
  b3X=0+250*cos(b3T);
  //enemy 4B movement
  b4T+=.02;
  rect(b4X, b4Y, 20, 30);
  b4Y=110+250*sin(b4T);
  b4X=90+300*cos(b4T);
  //enemy 5B movement
  b5T+=.0375;
  rect(b5X, b5Y, 20, 30);
  b5Y=110+250*sin(b5T);
  b5X=60+350*cos(b5T);
  //enemy 6B movement
  b6T+=.0375;
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
  text(count3, 50, 300);
  if (bY+30>c2Y && c2Y+40>bY && bX+20>c2X && bX<c2X+20) {
    count3=0;
    //level 2
    //enemy 1 vars
    bX=45;
    bY=-100;
    bT=PI;
    //enemy 2 vars
    b2X=40;
    b2Y=-100;
    b2T=PI/2;
    //enemy 3 vars
    b3X=0;
    b3Y=-100;
    b3T=PI;
    //enemy 4 vars
    b4X=90;
    b4Y=-100;
    b4T=.75*PI;
    //enemy 5 vars
    b5X=60;
    b5Y=-100;
    b5T=-.75*PI;
    //enemy 6 vars
    b6X=60;
    b6Y=-100;
    b6T=PI;
    //main character, level 2
    c2X=150;
    c2Y=260;
  }
  if (b2Y+30>c2Y && c2Y+40>b2Y && b2X+20>c2X && b2X<c2X+20) {
    count3=0;
    //level 2
    //enemy 1 vars
    bX=45;
    bY=-100;
    bT=PI;
    //enemy 2 vars
    b2X=40;
    b2Y=-100;
    b2T=PI/2;
    //enemy 3 vars
    b3X=0;
    b3Y=-100;
    b3T=PI;
    //enemy 4 vars
    b4X=90;
    b4Y=-100;
    b4T=.75*PI;
    //enemy 5 vars
    b5X=60;
    b5Y=-100;
    b5T=-.75*PI;
    //enemy 6 vars
    b6X=60;
    b6Y=-100;
    b6T=PI;
    //main character, level 2
    c2X=150;
    c2Y=260;
  }
  if (b3Y+30>c2Y && c2Y+40>b3Y && b3X+20>c2X && b3X<c2X+20) {
    count3=0;
    //level 2
    //enemy 1 vars
    bX=45;
    bY=-100;
    bT=PI;
    //enemy 2 vars
    b2X=40;
    b2Y=-100;
    b2T=PI/2;
    //enemy 3 vars
    b3X=0;
    b3Y=-100;
    b3T=PI;
    //enemy 4 vars
    b4X=90;
    b4Y=-100;
    b4T=.75*PI;
    //enemy 5 vars
    b5X=60;
    b5Y=-100;
    b5T=-.75*PI;
    //enemy 6 vars
    b6X=60;
    b6Y=-100;
    b6T=PI;
    //main character, level 2
    c2X=150;
    c2Y=260;
  }
  if (b4Y+30>c2Y && c2Y+40>b4Y && b4X+20>c2X && b4X<c2X+20) {
    count3=0;
    //level 2
    //enemy 1 vars
    bX=45;
    bY=-100;
    bT=PI;
    //enemy 2 vars
    b2X=40;
    b2Y=-100;
    b2T=PI/2;
    //enemy 3 vars
    b3X=0;
    b3Y=-100;
    b3T=PI;
    //enemy 4 vars
    b4X=90;
    b4Y=-100;
    b4T=.75*PI;
    //enemy 5 vars
    b5X=60;
    b5Y=-100;
    b5T=-.75*PI;
    //enemy 6 vars
    b6X=60;
    b6Y=-100;
    b6T=PI;
    //main character, level 2
    c2X=150;
    c2Y=260;
  }
  if (b5Y+30>c2Y &&c2Y+40>b5Y && b5X+20>c2X && b5X<c2X+20) {
    count3=0;
    //level 2
    //enemy 1 vars
    bX=45;
    bY=-100;
    bT=PI;
    //enemy 2 vars
    b2X=40;
    b2Y=-100;
    b2T=PI/2;
    //enemy 3 vars
    b3X=0;
    b3Y=-100;
    b3T=PI;
    //enemy 4 vars
    b4X=90;
    b4Y=-100;
    b4T=.75*PI;
    //enemy 5 vars
    b5X=60;
    b5Y=-100;
    b5T=-.75*PI;
    //enemy 6 vars
    b6X=60;
    b6Y=-100;
    b6T=PI;
    //main character, level 2
    c2X=150;
    c2Y=260;
  }
  if (b6Y+30>c2Y && c2Y+40>b6Y &&  b6X+20>c2X && b6X<c2X+20) {
    count3=0;
    //level 2
    //enemy 1 vars
    bX=45;
    bY=-100;
    bT=PI;
    //enemy 2 vars
    b2X=40;
    b2Y=-100;
    b2T=PI/2;
    //enemy 3 vars
    b3X=0;
    b3Y=-100;
    b3T=PI;
    //enemy 4 vars
    b4X=90;
    b4Y=-100;
    b4T=.75*PI;
    //enemy 5 vars
    b5X=60;
    b5Y=-100;
    b5T=-.75*PI;
    //enemy 6 vars
    b6X=60;
    b6Y=-100;
    b6T=PI;
    //main character, level 2
    c2X=150;
    c2Y=260;
  }
  
  fill(0, alpha3);
  stroke(0, alpha3);
  ellipse(400, 280, 40, 40);
  if (count3>500) {
    alpha3=255;
    bT=PI;
    b2T=PI;
    b3T=PI;
    b4T=PI;
    b5T=PI;
    b6T=PI;
  } else {
    alpha3=0;
  }
  if (mouseX>c2X && mouseX<c2X+20 && mouseY>c2Y && mouseY<c2Y+40) {
    corp = true;  
    if (!lose) {
    }
  } else {
    corp = false;
  }
}