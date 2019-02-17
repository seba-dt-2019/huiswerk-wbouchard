/* Moduleopgave_4_Bulls_Eye
Author: Wesley Bouchard
Student number: 575976 
Date: 14-02-2019 */

int BLACK = #000000,
    WHITE = #FFFFFF,
    RED = #FF0000,
    GREEN = #00FF00,
    buttonX,
    buttonY,
    buttonWidth = 100,
    buttonHeight = 50,
    targetWidth = 50,
    targetHeight = 50,
    amountHit = 0,
    amountMissed = 0,
    target_X = -buttonWidth,
    target_Y;
    
float speedTarget;

boolean started = false;

String buttonStatus = "START";

void setup() {
  size(600,600);
  pixelDensity(displayDensity());
  smooth();
  buttonX = width/2 - 50;
  buttonY = height - 50;
  target_Y = width/2;
}

void draw() {
  background(BLACK);
  drawButton();
  scoreBoard();
  update(); 
}

void scoreBoard() {
  textAlign(LEFT);
  fill(WHITE);
  text("Aantal raak: " + amountHit + " aantal mis: " + amountMissed, 5, 30);
}

void drawButton() {
  String text;
  if (started) {
    text = "STOP";
  } else {
    text = "START";
  }
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
  ellipse(targetX, target_Y, targetWidth, targetHeight);
  target_X += speedTarget;
  println(speedTarget);  
}

void resetTargetX() {
  if (target_X > width) {
    target_X = 0;
  }
}

void buttonClicked() {
  if (started) {
    started = false;
    amountHit = 0;
    amountMissed = 0;
  } else {
    started = true;
    speedTarget = random(2, 10);
  }
}

void update() {
  if (started) {
    drawTarget(target_X);
    resetTargetX();
  } else {
    target_X = -buttonWidth;
  }
}

void mouseClicked() {
  if (mouseX > buttonX && mouseX < buttonX + buttonWidth 
    && mouseY > buttonY && mouseY < buttonY + buttonHeight) {
      buttonClicked();
    } else if (mouseX > target_X && mouseX < target_X + targetWidth
      && mouseY > target_Y && mouseY < target_Y + targetHeight) {
      println("RAAK");
      amountHit++;
      } else {
        println("MIS");
        amountMissed++;
      }
}
