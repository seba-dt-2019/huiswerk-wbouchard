/* Moduleopgave_1
Author: Wesley Bouchard
Student number: 575976 
Date: 03-02-2019 */

size(500, 200);
background(0);
smooth();

// Bars (values could change)
float barA = 20.0;
float barB = 190.0;
float barC = 150.0;

int numberBars = 3;
float averageValue = (barA + barB + barC) / numberBars;

// float zoomFactor = 0.7;

float barWidth = 100;
float interspace = (width - (barWidth * numberBars)) / 4;

float xPosBarB = (interspace * 2) + barWidth;
float yPosBarB = height - barB;
float xPosBarC = (interspace * 3) + barWidth * 2;
float yPosBarC = height - barC;


// draw barA
fill(120, 109, 249);
rect(interspace, height - barA, barWidth, barA);
text(barA, interspace, height - barA);

// draw barB
fill(106, 247, 84);
rect(xPosBarB, yPosBarB, barWidth, barB);
text(barB, xPosBarB, yPosBarB);

// draw barC
fill(171, 96, 49);
rect(xPosBarC, yPosBarC, barWidth, barC);
text(barC, xPosBarC, yPosBarC);

// draw line average
stroke(169, 16, 108);
line(0, averageValue, width, averageValue);
fill(169, 16, 108);
text(averageValue, 0, averageValue);
