/* Oefenopgave_2_2 en Oefenopgave_2_3
Author: Wesley Bouchard
Student number: 575976 
Date: 06-02-2019 */

void setup() {
  size(700, 700);
  
  // set values
  float setX = 40;
  float setY = 50;
  float setWidth = 500;
  int amountPixels = 1;
  
  float x = constrain(setX, 0, width - setWidth);
  float y = constrain(setY, 0, height - (setWidth / 2));
  
  float rectWidth =constrain(setWidth, 50, (width - x) -amountPixels);
  float rectHeight = rectWidth / 2;
  
  // draw rectangle
  rect(x, y, rectWidth, rectHeight);
  
  // draw lines
  stroke(255, 0, 0);
  strokeCap(SQUARE);
  line(x, y + rectHeight / 2, x + rectWidth, y + rectHeight / 2);
  line(x + rectWidth / 2, y, x + rectWidth / 2, y + rectHeight);
  
  // draw colored rectangles
  noStroke();
  fill(0, 0, 255);
  rect(x + amountPixels, y + amountPixels, (rectWidth / 2) - amountPixels, (rectHeight / 2) - amountPixels);
  rect(x + (rectWidth / 2) +  amountPixels, y +(rectHeight / 2) + amountPixels, (rectWidth / 2) - amountPixels, (rectHeight / 2) - amountPixels);
  fill(0, 255, 0);
  rect(x + amountPixels, y +(rectHeight / 2) + amountPixels, (rectWidth / 2) - amountPixels, (rectHeight / 2) - amountPixels);
  rect(x + (rectWidth / 2) + amountPixels, y + amountPixels, (rectWidth / 2) - amountPixels, (rectHeight / 2) - amountPixels);
}

void draw() {
}
