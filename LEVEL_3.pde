float c3X=20;
float c3Y=120;
float c3difX = 0.0; 
float c3difY = 0.0; 
boolean corn = false;
boolean locked = false;
void page5() {
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
}