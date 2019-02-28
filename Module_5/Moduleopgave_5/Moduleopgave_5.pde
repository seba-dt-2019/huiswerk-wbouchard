/* moduleopgave_5
Author: Wesley Bouchard
Student number: 575976 
Date: 21-02-2019 */

import controlP5.*;
ControlP5 theControl;

int barWidth = 100;
int halfBarWidth = barWidth / 2;
int barHeight;
int barPosX;
int barPosY;
int topScreen;
int downScreen;

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

int          sliderPos;
final int    sliderNPos = 200;
final float  sliderX = 50,
       sliderY =220,
       sliderWidth = 300,
       sliderHeight = 20;

void setup() {
  size(400, 350);
  pixelDensity(displayDensity());
  smooth();
  topScreen = height / 2;
  //downScreen = height;
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
  text("ondergewicht", amountPixels2, topScreen - (normaalGewicht*factor) + amountPixels3);
  
  //draw line and write text "normaalGewicht"
  line(linePosX, topScreen - (normaalGewicht*factor), width, topScreen - (normaalGewicht*factor));
  text("normaal gewicht", amountPixels2, topScreen - (normaalGewicht*factor) - amountPixels);
  
  //draw line and write text "overgewicht"
  line(linePosX, topScreen - (overgewicht*factor), width, topScreen - (overgewicht*factor));
  text("overgewicht", amountPixels2, topScreen - (overgewicht*factor) - amountPixels);
  
  //draw line and write text "obees"
  line(linePosX, topScreen - (obees*factor), width, topScreen - (obees*factor));
  text("obees", amountPixels2, topScreen - (obees*factor) - amountPixels);
  
  // draw line and bar
  fill(137,22,62);
  rect(barPosX, topScreen, barWidth, 0 - (BMI*factor));
  line(linePosX, topScreen, width, topScreen);
  
  sliderPos = determinePos(sliderX, sliderWidth, sliderNPos);
  drawSlider(sliderX, sliderY, sliderWidth, sliderHeight, sliderPos, sliderNPos);
  fill(#FFFFFF);
  text("Lengte: " + sliderPos + " m", sliderX, sliderY + sliderHeight + 25);
}
