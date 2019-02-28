/* Moduleopgave_5_2
Author: Wesley Bouchard
Student number: 575976 
Date: 20-02-2019 */

void setup() {
String buyAmountRoll = calcAmountRoll(0.52, 10, 2.25, 5.5, 0.02);
println(buyAmountRoll + " Rollen");
}

void draw() {
}

String calcAmountRoll(float rollWidth, float rollLength, float wallWidth, float wallHeight, float patternHeight) {
  float numberOfFrays = (ceil(wallWidth / rollWidth));
  float numberOfPatternsPerRoll = floor(rollLength / patternHeight);
  float numberOfPatternsPerFray = ceil(wallHeight / patternHeight);
  float numberOfFraysPerRoll = floor(numberOfPatternsPerRoll / numberOfPatternsPerFray);
  float amountRoll = ceil(numberOfFrays / numberOfFraysPerRoll);
  
  return nf(amountRoll, 1, 0);
}
