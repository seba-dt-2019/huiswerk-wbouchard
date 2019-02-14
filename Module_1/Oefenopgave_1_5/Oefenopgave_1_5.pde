/* Oefenopgave_1_5
Author: Wesley Bouchard
Student number: 575976 
Date: 03-02-2019 */

float rectX = 50;
float rectY = 80;
float rectHeight = 200;
float rectWidth = rectHeight * 2;
float ellipseSize = rectWidth / 3;
float ellipseX = rectHeight + rectX;
float ellipseY = rectHeight / 2 + rectY;

size(500, 400);
smooth();

//draw rectangle
fill(#FFFFFF);
rect(rectX, rectY, rectWidth, rectHeight);

//draw ellipse
ellipseMode(CENTER);
fill(#FF0000);
ellipse(ellipseX, ellipseY, ellipseSize, ellipseSize);

//write "Nippon"
fill(#000000);
textSize(ellipseSize / 5);
textAlign(CENTER, CENTER);
text("Nippon", ellipseX, ellipseY);
