//prerequisite 0 <= pos < nPos
void drawSlider(float x, float y, float Width, float Height, int pos, int nPos) {           
  float blockWidth = Width / nPos;
  noStroke();
  fill(#FFFFFF);    
  rect(x, y, Width, Height);
  fill(#0000FF);
  rect(x + pos * blockWidth, y, blockWidth, Height);
}

int determinePos(float x, float Width, int nPos) {
  float blockWidth = Width / nPos;
  if (mouseX < x) {
    return 0;
  }
  else if (mouseX >= Width + x) {
    return nPos - 1;
  }
  else {
    return floor((mouseX - x) / blockWidth);
  }
}
