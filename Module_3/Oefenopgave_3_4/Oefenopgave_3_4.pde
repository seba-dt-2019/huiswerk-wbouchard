/* Oefenopgave_3_4
Author: Wesley Bouchard
Student number: 575976 
Date: 08-02-2019 */

int x,
y,
rectWidth,
rectHeight,
centerWidth,
centerHeight,
textSize,
factor = 5,
YELLOW = #FFFF00,
RED = #FF0000;

void setup() {
  size(600,600);
  centerWidth = width/2;
  centerHeight = height/2;
  x = centerWidth;
  y = centerHeight;
  rectWidth = width/2;
  rectHeight = rectWidth/factor;
  textSize = rectHeight/2;
  drawRectangle();
}

void draw() {
}

void drawRectangle() {
  fill(YELLOW);
  rectMode(CENTER);
  rect(x,y,rectWidth,rectHeight);
}

void writeMousePos() {
  fill(RED);
  textSize(textSize);
  textAlign(CENTER,CENTER);
  text("(" + mouseX + " - " + mouseY + ")", x, y);
}

void mouseClicked() {
  //only if mouseX is even
  if (mouseX%2 == 0) {
  drawRectangle();
  writeMousePos();
  }
}
