void drawLines() {
  int linePosX = 0;
  drawLine(linePosX, centerScreen - (normaalGewicht*factor), width, centerScreen - (normaalGewicht*factor));
  drawLine(linePosX, centerScreen - (overgewicht*factor), width, centerScreen - (overgewicht*factor));
  drawLine(linePosX, centerScreen - (obees*factor), width, centerScreen - (obees*factor));
  drawLine(linePosX, centerScreen, width, centerScreen);
}

void drawLine(float x, float y, float x2, float y2) {
  stroke(#FFFFFF);
  line(x, y, x2, y2);
}

void writeTextUnderLines() {
  int amountPixels = 2;
  int amountPixels2 = 5;
  int amountPixels3 = 14;
  writeTextUnderLine("ondergewicht", amountPixels2, centerScreen - (normaalGewicht*factor) + amountPixels3);
  writeTextUnderLine("normaal gewicht", amountPixels2, centerScreen - (normaalGewicht*factor) - amountPixels);
  writeTextUnderLine("overgewicht", amountPixels2, centerScreen - (overgewicht*factor) - amountPixels);
  writeTextUnderLine("obees", amountPixels2, centerScreen - (obees*factor) - amountPixels);
}

void writeTextUnderLine(String text, float x, float y) {
  fill(#FFFFFF);
  text(text, x, y);
}

void drawBar(float x, float y, float Width, float Height) {
  rectMode(CORNER);
  fill(137,22,62);
  rect(x, y, Width, Height);
}
