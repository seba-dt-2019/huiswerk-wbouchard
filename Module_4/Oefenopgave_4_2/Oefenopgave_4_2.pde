/* oefenopgave_4_2
Author: Wesley Bouchard
Student number: 575976 
Date: 11-02-2019 */

int BLACK = #000000;

void setup() {
  size(600,400);
  background(BLACK);
  int kwartCenterX = width/4;
  int kwartCenterY = height/4;
  printRegel("Harry", kwartCenterX, kwartCenterY);
  printRegel("Marianne", kwartCenterX * 3, kwartCenterY);
  printRegel("Ludo", kwartCenterX, kwartCenterY * 3);
  printRegel("Maaike", kwartCenterX * 3, kwartCenterY * 3);
  printRegel("Wesley", width/2, height/2);
}

void draw() {
}

void printRegel(String naam, int posX, int posY) {
  textAlign(CENTER,CENTER);
  text("Hallo " + naam + ", hoe gaat het met je?", posX, posY);
}
