/* moduleopgave_2
Author: Wesley Bouchard
Student number: 575976 
Date: 06-02-2019 */

import controlP5.*;
ControlP5 theControl;

int barWidth = 100;
int halfBarWidth = barWidth / 2;
int barHeight;
int barPosX;
int barPosY;

int factor = 4;
int zoomFactor = 10000;

int amountPixels = 2;
int amountPixels2 = 5;
int amountPixels3 = 14;

int linePosX = 0;
float BMI;

// Variabelen
float obees = 30;
float overgewicht = 25;
float normaalGewicht = 18.5;
float ondergewicht;

void setup() {
  size(400, 350);
  smooth();
  
  barPosX = width / 2 - halfBarWidth;
    
  theControl = new ControlP5(this);
  createNumberBoxes(theControl);
}

void draw() {
  background(0);
  BMI = (leesGewicht() / (leesLengte() * leesLengte())*zoomFactor);
  println(BMI);
  
  //write text "ondergewicht"
  stroke(#FFFFFF);
  fill(#FFFFFF);
  text("ondergewicht", amountPixels2, height - (normaalGewicht*factor) + amountPixels3);
  
  //draw line and write text "normaalGewicht"
  line(linePosX, height - (normaalGewicht*factor), width, height - (normaalGewicht*factor));
  text("normaal gewicht", amountPixels2, height - (normaalGewicht*factor) - amountPixels);
  
  //draw line and write text "overgewicht"
  line(linePosX, height - (overgewicht*factor), width, height - (overgewicht*factor));
  text("overgewicht", amountPixels2, height - (overgewicht*factor) - amountPixels);
  
  //draw line and write text "obees"
  line(linePosX, height - (obees*factor), width, height - (obees*factor));
  text("obees", amountPixels2, height - (obees*factor) - amountPixels);
  
  // draw bar
  fill(137,22,62);
  rect(barPosX, height, barWidth, 0 - (BMI*factor));
}
