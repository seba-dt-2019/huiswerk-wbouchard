void drawSlider(int x, int y, int Width, int Height) {
  rectMode(CORNER);
  fill(#FFFFFF);
  rect(x, y, Width, Height);
}

void drawSliderButton(int x, int y, int Width, int Height) {
  rectMode(CENTER);
  stroke(#0000FF);
  fill(#0000FF);
  rect(x, y, Width, Height);
}

boolean buttonPressed() {
  return true;
}

boolean buttonReleased() {
  return false;
}

float calculateBMI() {
  int zoomFactor = 10000;
  return (readWeight() / (readLength() * readLength())*zoomFactor);
}

//Returns the weight in kg
float readWeight() {
  return 89;
}

//Returns the length in cm  
float readLength() {
  return 189;
}

void writeTextUnderSlider(String text, float x, float y) {
  fill(#FFFFFF);
  text(text, x, y); 
}
