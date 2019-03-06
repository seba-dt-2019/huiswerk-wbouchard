/* Moduleopgave_7
Author: Wesley Bouchard
Student number: 575976 
Date: 05-03-2019 */

final int GRIJS = 204;
final int WIT = #FFFFFF;

float grafiekX1, grafiekY1, grafiekX2, grafiekY2;
float[] cijfers;

void setup() {
  size(600,500);
  background(#000000);
  pixelDensity(displayDensity());
  smooth();
  
  grafiekX1 = 25;
  grafiekY1 = 100;
  grafiekX2 = width - grafiekX1;
  grafiekY2 = height - 50;
  
  cijfers = loadFloats("cijfers_groot.txt");
  
  tekenGrafiek(grafiekX1, grafiekY1, grafiekX2, grafiekY2, GRIJS);
  drukAf(laadUitkomsten(cijfers), grafiekX1, 15);
  
  tekenStaafDiagram(grafiekX1, grafiekY1, grafiekX2, grafiekY2, WIT, aantalPerCijfer(cijfers));
}

void draw() {
}

void drukAf(String[] text, float x, float y) {
  for(int i = 0; i < text.length; i++) { 
    drukRegelAf(text[i], x, y);
    y += 15;
  }
}

void drukRegelAf(String text, float x, float y) {
  fill(GRIJS);
  text(text, x, y);
}

void tekenGrafiek(float x1, float y1, float x2, float y2, int kleur) {
    fill(kleur);
    stroke(190);
    rectMode(CORNERS);
    rect(x1, y1, x2, y2);
}

void tekenStaafDiagram(float x1, float y1, float x2, float y2, int kleur, int[] lijst) {
    fill(kleur);
    stroke(0);
    rectMode(CORNERS);
    float staafBreedte = (x2 - x1) / lijst.length;
    for (int i = 0; i < lijst.length; i++) {
      float staafX = x1 + i * staafBreedte;
      float staafY = map(lijst[i], laagsteAantalPerCijfer(lijst), hoogsteAantalPerCijfer(lijst), y2, y1); 
      rect(staafX, y2, staafX + staafBreedte, staafY);
  }
    textAlign(CENTER);
    for (int i = 0; i <= 10; i++) {
      text(i + ",0", x1 + 10 +(i * staafBreedte), y2 + 15);
    }
}
