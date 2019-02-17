/* Moduleopave_3
Author: Wesley Bouchard
Student number: 575976 
Date: 14-02-2019 */

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

boolean pickUp = false;

void setup() {
  size(400,400);
  pixelDensity(displayDensity());
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
    if (pickUp) {
      if (keyCode == UP) {
      cargoY -= cargoHeight;
      robotY -= robotHeight;
    } else if (keyCode == DOWN) {
      cargoY += cargoHeight;
      robotY += robotHeight;      
    } else if (keyCode == LEFT) {
      cargoX -= cargoWidth;
      robotX -= robotWidth;      
    } else if (keyCode == RIGHT) {
      cargoX += cargoWidth;
      robotX += robotWidth;     
    }
  } else {
    if (keyCode == UP) {
      robotY -= robotHeight;
    } else if (keyCode == DOWN) {
      robotY += robotHeight;
    } else if (keyCode == LEFT) {
      robotX -= robotWidth;
    } else if (keyCode == RIGHT) {
      robotX += robotWidth;
    }
  }
} if (keyCode == ENTER && cargoX == robotX + halfCargoWidth && cargoY == robotY + halfCargoHeight) {
    pickUp = !pickUp;
  }
}
