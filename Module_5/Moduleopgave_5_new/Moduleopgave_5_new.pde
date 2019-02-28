/* moduleopgave_5
Author: Wesley Bouchard
Student number: 575976 
Date: 28-02-2019 */

// Variabelen
float obees = 30,
      overgewicht = 25,
      normaalGewicht = 18.5,
      ondergewicht,
      BMI;

int factor = 4,
    zoomFactor = 10000,
    centerScreen,
    barWidth = 100,
    sliderWidth = 300,
    sliderHeight = 16,
    sliderWeightY,
    sliderX,
    sliderLengthY,
    sliderButtonWidth = 15,
    sliderWeightButtonX = 150,
    sliderLengthButtonX = 180;

boolean buttonWeightPressed = false,
        buttonWeightReleased = true,
        buttonLengthPressed = false,
        buttonLengthReleased = true;

final int MAXWEIGHT = 200,
          MINWEIGHT = 10,
          MAXLENGTH = 250,
          MINLENGTH = 50;

void setup() {
  size(400, 350);
  pixelDensity(displayDensity());
  smooth();
  centerScreen = height/2;
  sliderWeightY = centerScreen + 30;
  sliderX = width/2 - sliderWidth/2;
  sliderLengthY = centerScreen + 100;
}

void draw() {
  background(#000000);
  drawLines();
  writeTextUnderLines();
  drawBar(width/2 - barWidth/2, centerScreen, barWidth, 0 - (calculateBMI()*factor));
  drawSliders();
  drawSliderButtons();
  writeTextUnderSliders();
  update();
  println(sliderWeightButtonX);
}

void update() {
  if (buttonWeightPressed) {
      sliderWeightButtonX = constrain(mouseX, sliderX + sliderButtonWidth/2, (sliderX + sliderWidth) - sliderButtonWidth/2);
  }
  else if (buttonLengthPressed) {
    sliderLengthButtonX = constrain(mouseX, sliderX + sliderButtonWidth/2, (sliderX + sliderWidth) - sliderButtonWidth/2);
  } 
}

void mousePressed() {
    if (mouseX > sliderWeightButtonX - sliderButtonWidth/2 && mouseX < sliderWeightButtonX + sliderButtonWidth/2 
        && mouseY > sliderWeightY && mouseY < sliderWeightY + sliderHeight) {
          buttonWeightReleased = false;
          buttonWeightPressed = true;
        }
    else if (mouseX > sliderLengthButtonX - sliderButtonWidth/2 && mouseX < sliderLengthButtonX + sliderButtonWidth/2 
        && mouseY > sliderLengthY && mouseY < sliderLengthY + sliderHeight) {
          buttonLengthReleased = false;
          buttonLengthPressed = true;
        }
}

void mouseReleased() {
  buttonWeightPressed = false;
  buttonWeightReleased = true;
  buttonLengthPressed = false;
  buttonLengthReleased = true;
}
