/* Moduleopgave_5_1
Author: Wesley Bouchard
Student number: 575976 
Date: 20-02-2019 */



void setup() {
  float getal1 = 7.56; 
  float getal2 = 7.498; 
  float getal3 = 4.999; 
  float getal4 = -2.0001;
  
  String tekst1 = formatteer(getal1);
  println(tekst1);
  
  String tekst2 = formatteer(getal2);
  println(tekst2);
  
  String tekst3 = formatteer(getal3);
  println(tekst3);
  
  String tekst4 = formatteer(getal4);
  println(tekst4);
}

void draw() {
  
}

String formatteer(float getal) {
  return nf(getal, 1, 1);
}
