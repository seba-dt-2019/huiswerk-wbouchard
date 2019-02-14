/* Oefenopgave_1_4A
Author: Wesley Bouchard
Student number: 575976 
Date: 01-02-2019 */

size(500, 400);
smooth();

int rectHeight = 200;

//draw rectangle
fill(#FFFFFF);
rect(0, 0, rectHeight * 2, rectHeight);

//draw ellipse
ellipseMode(CENTER);
fill(#FF0000);
ellipse(rectHeight, rectHeight / 2, (rectHeight * 2) / 3, (rectHeight * 2) / 3);
