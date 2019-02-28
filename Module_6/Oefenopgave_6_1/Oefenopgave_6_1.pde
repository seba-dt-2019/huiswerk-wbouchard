/* Oefenopgave_6_1
Author: Wesley Bouchard
Student number: 575976 
Date: 21-02-2019 */

void setup() {
  size(150,250);
  pixelDensity(displayDensity());
  fill(#000000);
}

void draw() {
  int yPos = 20;
  for (int i=1; i <= 10; i++) {
    text(1*i, 40, yPos);
    yPos += 20;
  }
}
