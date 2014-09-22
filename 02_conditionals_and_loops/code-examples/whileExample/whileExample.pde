int circleY = 250;

void setup()
{
  size(500, 500);
  noStroke();
  fill(255,0,0);
  background(255);
}

void draw()
{
  int circleX = 10;

  while (circleX<width)
  {
    ellipse(circleX, circleY, 20, 20);
    circleX = circleX + 30;
  }
}
