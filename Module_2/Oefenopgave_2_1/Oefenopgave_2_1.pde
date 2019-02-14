/* Oefenopgave_2_1
Author: Wesley Bouchard
Student number: 575976 
Date: 06-02-2019 */

void setup() {
  size(500, 300);
  
  // set values
  int setX = 70;
  int setY = 30;
  int setWidth = 300;
  
  int x = constrain(setX, 0, width - setWidth);
  int y = constrain(setY, 0, height - (setWidth / 2));
  
  int rectWidth =constrain(setWidth, 50, (width - x) -1);
  int rectHeight = rectWidth / 2;
  
  // draw rectangle
  rect(x, y, rectWidth, rectHeight);
  
  // draw lines
  stroke(255, 0, 0);
  strokeCap(SQUARE);
  line(x, y + rectHeight / 2, x + rectWidth, y + rectHeight / 2);
  line(x + rectWidth / 2, y, x + rectWidth / 2, y + rectHeight);
}

void draw() {
}
