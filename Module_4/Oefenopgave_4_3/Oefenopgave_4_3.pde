/* oefenopgave_4_3
Author: Wesley Bouchard
Student number: 575976 
Date: 11-02-2019 */

void setup() {
  drukaf(7.56, -7.56);
  drukaf(7.498, -7.489);
  drukaf(3.01, -3.01);
  drukaf(4.999, -4.999);
}

void draw() {
}

void drukaf(float getal1, float getal2) {
  println("getal    : " + getal1 + " en " + getal2);
  println("int()    : " + int(getal1) + "    en " + int(getal2));
  println("round()  : " + round(getal1) + "    en " + round(getal2));
  println("floor()  : " + floor(getal1) + "    en " + floor(getal2));
  println("ceil()   : " + ceil(getal1) + "    en " + ceil(getal2));
  println();
}
