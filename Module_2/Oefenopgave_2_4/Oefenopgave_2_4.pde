/* Oefenopgave_2_4
Author: Wesley Bouchard
Student number: 575976 
Date: 06-02-2019 */

void setup() {
  size(600, 500);
  
  // set values
  float setWidth = 500;
  
  float centerX = width / 2;
  float centerY = height / 2;
  
  float x = constrain(centerX, 0, width);
  float y = constrain(centerY, 0, height);
  
  float rectWidth =constrain(setWidth, 50, (width - x) -1);
  float rectHeight = rectWidth / 2;
  
  // draw rectangle
  rectMode(CENTER);
  rect(x, y, rectWidth, rectHeight);
  
  // draw lines
  stroke(255, 0, 0);
  strokeCap(SQUARE);
  line(x - rectWidth / 2, y, x + rectWidth / 2, y);
  line(x, y - rectHeight / 2, x, y + rectHeight / 2);
  
  //// draw colored rectangles
  //noStroke();
  //fill(0, 0, 255);
  //rect(x + 1, y + 1, (rectWidth / 2) - 1, (rectHeight / 2) - 1);
  //rect(x + (rectWidth / 2) + 1, y +(rectHeight / 2) + 1, (rectWidth / 2) - 1, (rectHeight / 2) - 1);
  //fill(0, 255, 0);
  //rect(x + 1, y +(rectHeight / 2) + 1, (rectWidth / 2) - 1, (rectHeight / 2) - 1);
  //rect(x + (rectWidth / 2) + 1, y + 1, (rectWidth / 2) - 1, (rectHeight / 2) - 1);
}

void draw() {
}
