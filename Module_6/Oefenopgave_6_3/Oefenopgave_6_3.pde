/* Oefenopgave_6_3
Author: Wesley Bouchard
Student number: 575976 
Date: 21-02-2019 */

final int ZIJDE = 15,
          AANTAL = 15;

void setup() {
  size(350,350);
  background(#FFFFFF);
  pixelDensity(displayDensity());
  smooth();
  fill(#FF0000);
}

void draw() {
  int xPos = 50;
  int yPos = 50;
  for (int i=1; i <= AANTAL; i++) {
    for (int j=1; j <= AANTAL; j++) {
      rect(xPos, yPos, ZIJDE, ZIJDE);
      yPos += AANTAL;
    }
    yPos = 50;
    xPos += AANTAL;
  }   
}
