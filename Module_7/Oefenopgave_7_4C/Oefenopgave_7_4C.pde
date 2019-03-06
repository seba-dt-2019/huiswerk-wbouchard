/* Oefenopgave_7_4C
Author: Wesley Bouchard
Student number: 575976 
Date: 04-03-2019 */

int[][] cirkels = {
  {10,15},
  {100,130},
  {77,43},
  {30,145},
  {185,17},
  {99,76},
};
final int DIAMETER = 20;
final int GEEL = #FFFF00;
final int ROOD = #FF0000;

void setup() {
  size(200, 200);
  smooth();
  pixelDensity(displayDensity());
  ellipseMode(CENTER);
}

void draw() {
  background(#000000);
  tekenCirkels(cirkels);
}

void tekenCirkels(int[][] coordinaten) {
  for (int i = 0; i < coordinaten.length; i++) {
    float stipX = coordinaten[i][0];
    float stipY = coordinaten[i][1];
    int cirkelNummer = 0 + i;
    
    if (dist(stipX, stipY, mouseX, mouseY) < DIAMETER / 2) {
      fill(ROOD);
      stroke(ROOD);
      if (mousePressed) {   
        println("geklikt op cirkel met index: " + cirkelNummer);
        }
    } else {
        fill(GEEL);
        stroke(GEEL);
      }
        ellipse(stipX, stipY, DIAMETER, DIAMETER);
  }
}
