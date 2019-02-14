/* Oefenopgave_3_1
Author: Wesley Bouchard
Student number: 575976 
Date: 08-02-2019 */

int BLACK = #000000,
secondsCounter = 0,
textSize = 60,
milliSecond = 1000,
amountPixels = 20,
m;

void setup() {
  size(500, 300);
  background(BLACK);
  drawSeconds();
  writeText();
}

void draw() {
  background(BLACK);
  m = millis();
  if ((m/milliSecond) == secondsCounter) {
    secondsCounter++;
    drawSeconds();
    writeText();
  }
  delay(milliSecond);
}

void drawSeconds() {
    textSize(textSize);
    textAlign(CENTER);
    text(secondsCounter,width/2, height/2);
}

void writeText() {
    textSize(amountPixels);
    textAlign(CENTER,TOP);
    text("seconden verstreken", width/2, height/2 + amountPixels);
}
