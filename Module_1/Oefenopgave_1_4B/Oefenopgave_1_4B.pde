/* Oefenopgave_1_4B
Author: Wesley Bouchard
Student number: 575976 
Date: 01-02-2019 */

float rectHeight = 200;
float rectWidth = rectHeight * 2;
float ellipseSize = rectWidth / 3;
float ellipseX = rectHeight;
float ellipseY = rectHeight / 2;

size(500, 400);
smooth();

//draw rectangle
fill(#FFFFFF);
rect(0, 0, rectWidth, rectHeight);

//draw ellipse
ellipseMode(CENTER);
fill(#FF0000);
ellipse(ellipseX, ellipseY, ellipseSize, ellipseSize);

//write "Nippon"
fill(#000000);
textSize(ellipseSize / 5);
textAlign(CENTER, CENTER);
text("Nippon", ellipseX, ellipseY);
