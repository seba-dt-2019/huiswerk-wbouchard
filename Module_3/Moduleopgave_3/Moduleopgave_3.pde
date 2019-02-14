/* Moduleopave_3
Author: Wesley Bouchard
Student number: 575976 
Date: 10-02-2019 */

int x,
robotX,
robotY,
robotWidth = 40,
robotHeight,
cargoX,
cargoY,
cargoWidth,
cargoHeight,
halfCargoWidth,
halfCargoHeight,
counter = 0,
GREY = 204,
WHITE = #FFFFFF,
BLACK = #000000;

boolean pickedUp = false;

void setup() {
  size(400,400);
  smooth();
  background(BLACK);
  robotHeight = robotWidth;
  cargoWidth = robotWidth;
  cargoHeight = robotHeight;
  halfCargoWidth = cargoWidth/2;
  halfCargoHeight = cargoHeight/2;
  cargoX = int(random(0,10)) * cargoWidth + halfCargoWidth;
  cargoY = int(random(0,10)) * cargoHeight + halfCargoHeight;
}

void draw() {
  background(BLACK);
  robotX = constrain(robotX, 0, width - robotWidth);
  robotY = constrain(robotY, 0, height - robotHeight);
  cargoX = constrain(cargoX,halfCargoWidth,width -halfCargoWidth);
  cargoY = constrain(cargoY,halfCargoHeight,width -halfCargoHeight);
  drawRobot();
  drawCargo();
}

void drawRobot() {
  noStroke();
  fill(WHITE);
  rect(robotX, robotY, robotWidth, robotHeight);
}

void drawCargo() {
  stroke(BLACK);
  fill(GREY);
  ellipse(cargoX, cargoY, cargoWidth, cargoHeight); 
}


void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      robotY -= robotHeight;
    } 
    if (keyCode == UP && pickedUp == true) {
      cargoY -= cargoHeight;
    } 
    if (keyCode == DOWN) {
      robotY += robotHeight;
    }
    if (keyCode == DOWN && pickedUp == true) {
      cargoY += cargoHeight;
    }
    if (keyCode == LEFT) {
      robotX -= robotWidth;
    }
    if (keyCode == LEFT && pickedUp == true) {
      cargoX -= cargoWidth;
    }
    if (keyCode == RIGHT) {
      robotX += robotWidth;
    }
    if (keyCode == RIGHT && pickedUp == true) {
      cargoX += cargoWidth;
    }
  }
  if (keyCode == ENTER && cargoX == robotX + halfCargoWidth && cargoY == robotY + halfCargoHeight) {
    pickedUp = true;
    counter++;
  }
  if (keyCode == ENTER && counter == 2) {
    pickedUp = false;
    counter = 0;
  }
}
