/* Oefenopgave_3_8
Author: Wesley Bouchard
Student number: 575976 
Date: 09-02-2019 */

int x,
y,
rectWidth,
rectHeight,
centerWidth,
centerHeight,
textSize,
creditX = 10,
creditY = 30,
factor = 5,
credits = 25,
counter = 0,
YELLOW = #FFFF00,
RED = #FF0000,
GREY = 204;

void setup() {
  size(600,600);
  background(GREY);
  smooth();
  centerWidth = width/2;
  centerHeight = height/2;
  x = centerWidth;
  y = centerHeight;
  rectWidth = width/2;
  rectHeight = rectWidth/factor;
  textSize = rectHeight/2;
  drawRectangle();
  drawCredits();
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

void drawCredits() {
  textAlign(LEFT);
  fill(RED);
  textSize(textSize);
  text("credits : " + credits, creditX, creditY);
}

void mouseClicked() {
  background(GREY);
  //when mouseX and mouseY is even
  if (mouseX%2 == 0 && mouseY%2 == 0) {
    counter++;
    if (counter == 1) {
      credits++;
    } else if (counter == 2) {
      credits += 2;
    } else if (counter == 3) {
      credits += 3;
    } else if (counter == 4) {
      credits += 5;
    } else {
      credits += 10;
}
    //when mouseX and mouseY isn't even
  } else if (mouseX%2 != 0 && mouseY%2 != 0) {
    if (credits > 1) {
      counter = 0;
      credits--;
    } else {
      counter = 0;
      credits = 25;
    }
  }
  drawRectangle();
  writeMousePos();
  drawCredits();
}
