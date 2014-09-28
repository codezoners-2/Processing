void setup() {
  size(400, 400);
  smooth();
}

void draw() {
  background(255);
  stroke(0);
  noFill();
  line(width/2, height, width/2, height/2);
  drawBranches(width/2, height/2, 70);
}

void drawBranches(float startPointX, float startPointY, float len)
{
  line(startPointX, startPointY, startPointX + len, startPointY - len);
  line(startPointX, startPointY, startPointX - len, startPointY - len);

  if (len>=2)
  {
    drawBranches(startPointX + len, startPointY - len, len/2);
    drawBranches(startPointX - len, startPointY - len, len/2);
  }
}
