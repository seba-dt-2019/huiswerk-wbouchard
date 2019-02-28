void drawSliders() {
  drawSliderWeight(sliderX, sliderWeightY, sliderWidth, sliderHeight);
  drawSliderLength(sliderX, sliderLengthY, sliderWidth, sliderHeight);
}

void drawSliderLength(int x, int y, int Width, int Height) {
  rectMode(CORNER);
  fill(#FFFFFF);
  rect(x, y, Width, Height);
}

void drawSliderWeight(int x, int y, int Width, int Height) {
  rectMode(CORNER);
  fill(#FFFFFF);
  rect(x, y, Width, Height);
}

void drawSliderButtons() {
  drawSliderWeightButton(sliderWeightButtonX, sliderWeightY + sliderHeight/2, sliderButtonWidth, sliderHeight);
  drawSliderLengthButton(sliderLengthButtonX, sliderLengthY + sliderHeight/2, sliderButtonWidth, sliderHeight);
}

void drawSliderLengthButton(int x, int y, int Width, int Height) {
  rectMode(CENTER);
  stroke(#0000FF);
  fill(#0000FF);
  rect(x, y, Width, Height);
}

void drawSliderWeightButton(int x, int y, int Width, int Height) {
  rectMode(CENTER);
  stroke(#0000FF);
  fill(#0000FF);
  rect(x, y, Width, Height);
}

boolean buttonWeigthPressed() {
  return true;
}

boolean buttonWeigthReleased() {
  return false;
}

float calculateBMI() {
  return (readWeight() / (readLength() * readLength())*zoomFactor);
}

//Returns the weight in kg
float readWeight() {
  float value2 = map(sliderWeightButtonX - sliderButtonWidth/2, sliderX, (sliderX + sliderWidth) - sliderButtonWidth, MINWEIGHT,MAXWEIGHT);
  return value2;
}

//Returns the length in cm  
float readLength() {
  float value2 = map(sliderLengthButtonX - sliderButtonWidth/2, sliderX, (sliderX + sliderWidth) - sliderButtonWidth, MINLENGTH,MAXLENGTH);
  return value2;
}

void writeTextUnderSliders() {
  writeTextUnderSliderWeight("Gewicht: " + nf(floor(readWeight()), 0, 1) + " kg", sliderX, sliderWeightY + 30);
  writeTextUnderSliderLength("Lengte: " + nf(readLength()/100, 1,2) + " m", sliderX, sliderLengthY + 30);
}

void writeTextUnderSliderWeight(String text, float x, float y) {
  fill(#FFFFFF);
  text(text, x, y); 
}

void writeTextUnderSliderLength(String text, float x, float y) {
  fill(#FFFFFF);
  text(text, x, y); 
}
