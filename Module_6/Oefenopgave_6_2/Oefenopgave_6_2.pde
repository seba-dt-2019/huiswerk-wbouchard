/* Oefenopgave_6_2
Author: Wesley Bouchard
Student number: 575976 
Date: 21-02-2019 */

void setup() {
  size(250,250);
  pixelDensity(displayDensity());
  fill(#000000);
}

void draw() {
  int xPos = 40;
  int yPos = 20;
  for (int j=1; j <= 10; j++) {
    for (int i=1; i <= 10; i++) {
      text(j*i, xPos, yPos);
      yPos += 20;
    }
    yPos = 20;
    xPos += 20;
  }   
}
