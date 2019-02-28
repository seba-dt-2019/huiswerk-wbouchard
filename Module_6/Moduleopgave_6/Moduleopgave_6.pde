/* Moduleopgave_6
Author: Wesley Bouchard
Student number: 575976 
Date: 25-02-2019 */

int maxAmountFamily = 8,
    maxAmountPersonInFamily = 5,
    imageHeight = 50;

PImage   male,
         female;
         
void setup() {
  size(300,600);
  smooth();
  pixelDensity(displayDensity());
  male = loadImage("jongetje.png");
  female = loadImage("meisje.png");
    drawFamilys();
}

void draw() {
}

void drawFamilys() {
  int yFamily = 30;
  for (int i = 0; i <= maxAmountFamily; i++) {
    drawFamily(yFamily);
    yFamily += imageHeight;
  }
}

void drawFamily(int yFamily) {
  int xFamily = 30;
  for (int i = 0; i <= (int) random(maxAmountPersonInFamily); i++) {
    drawPerson(producePerson(), xFamily, yFamily);
    xFamily += 30;
  }
}

void drawPerson(PImage image, int x, int y) {
  image(image, x, y);
}

PImage producePerson() {
  final int MALE = 0, FEMALE = 1;
  PImage person = null;
  
  int gender = int(random(2));
  
  switch(gender) {
    case MALE:
      person = male;
      break;
    case FEMALE:
      person = female;
      break;
  }
  return person;
}
