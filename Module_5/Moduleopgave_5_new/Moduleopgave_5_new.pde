/* moduleopgave_5
Author: Wesley Bouchard
Student number: 575976 
Date: 21-02-2019 */

// Variabelen
float obees = 30,
      overgewicht = 25,
      normaalGewicht = 18.5,
      ondergewicht,
      BMI;

int factor = 4,
    centerScreen,
    barWidth = 100,
    sliderWidth = 300,
    sliderHeight = 16,
    sliderY,
    sliderX,
    sliderButtonWidth = 15,
    sliderButtonX = 200;

boolean buttonPressed = false,
        buttonReleased;

final int MAXWEIGHT = 200,
          MINWEIGHT = 10,
          MAXLENGTH = 250,
          MINLENGTH = 50;

void setup() {
  size(400, 350);
  pixelDensity(displayDensity());
  smooth();
  centerScreen = height/2;
  sliderY = centerScreen + 50;
  sliderX = width/2 - sliderWidth/2;
}

void draw() {
  background(#000000);
  drawLines();
  writeTextUnderLines();
  drawBar(width/2 - barWidth/2, centerScreen, barWidth, 0 - (calculateBMI()*factor));
  drawSlider(sliderX, sliderY, sliderWidth, sliderHeight);
  drawSliderButton(sliderButtonX, sliderY + sliderHeight/2, sliderButtonWidth, sliderHeight);
  writeTextUnderSlider("Gewicht: " + readWeight() + " kg", sliderX, sliderY + 30);
  update();
}

void update() {
  if (buttonPressed) {
      sliderButtonX = constrain(mouseX, sliderX + sliderButtonWidth/2, (sliderX + sliderWidth) - sliderButtonWidth/2);
    println(sliderButtonX);
  } 
}

void mousePressed() {
    if (mouseX > sliderButtonX - sliderButtonWidth/2 && mouseX < sliderButtonX + sliderButtonWidth/2 
        && mouseY > sliderY && mouseY < sliderY + sliderHeight) {
          buttonReleased = false;
          buttonPressed = true;
        }
}

void mouseReleased() {
  buttonPressed = false;
  buttonReleased = true;
}
