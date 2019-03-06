/* Oefenopgave_7_5C
Author: Wesley Bouchard
Student number: 575976 
Date: 05-03-2019 */

float[] lijst1 = { -8.0, 4.5, 1.2, -5.6, -9.1, 4 }; // min -9.1, max 4.5
float[] lijst2 = { -0.4, -0.7, -3.5, -1.9, -8.0 }; // min -8.0, max -0.4

void setup() {
  float hoogste = geefHoogste(lijst2);
  println("Het hoogste cijfer is: " + hoogste);
  float laagste = geefLaagste(lijst2);
println("Het laagste cijfer is: " + laagste);
}

void draw() {
}
