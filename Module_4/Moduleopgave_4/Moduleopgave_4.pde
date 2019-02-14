/* Moduleopgave_4_Bulls_Eye
Author: Wesley Bouchard
Student number: 575976 
Date: 11-02-2019 */

int BLACK = #000000,
    WHITE = #FFFFFF,
    RED = #FF0000,
    GREEN = #00FF00,
    buttonX,
    buttonY,
    buttonWidth = 100,
    buttonHeight = 50,
    amountHit = 0,
    amountMissed = 0;

String buttonStatus = "START";

void setup() {
  size(600,600);
  pixelDensity(displayDensity());
  background(BLACK);
  smooth();
  buttonX = width/2 - 50;
  buttonY = height - 50;
}

void draw() {
  background(BLACK);
  drawButton(buttonStatus);
  scoreBoard();
}

void scoreBoard() {
  textAlign(LEFT);
  fill(WHITE);
  text("Aantal raak: " + amountHit + " aantal mis: " + amountMissed, 5, 30);
}

void drawButton(String text) {
  fill(GREEN);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  textAlign(CENTER,CENTER);
  textSize(20);
  fill(BLACK);
  text(text, width/2, height - 25);
}

void drawTarget(int targetX) {
  ellipseMode(CORNER);
  fill(RED);
  ellipse(targetX, height/2, 50, 50);
}

void moveTarget() {
  for (int i = 0; i < width; i = i+2) {
    //background(BLACK);
    drawTarget(i);
      //delay(1);
  }
}
void buttonClicked() {
  if (mouseX > buttonX && mouseX < buttonX + buttonWidth 
      && mouseY > buttonY && mouseY < buttonY + buttonHeight) {
    if (buttonStatus == "START") {
    buttonStatus = "STOP";
    moveTarget();
    }
    else if (buttonStatus == "STOP") {
      buttonStatus = "START";
      amountHit = 0;
      amountMissed = 0;
    }
  }
}

void mouseClicked() {
  buttonClicked();
}
