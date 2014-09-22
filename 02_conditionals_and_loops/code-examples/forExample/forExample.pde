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
  for (int circleX=10; circleX<width; circleX = circleX + 30)
  {
    ellipse(circleX, circleY, 20, 20);
  }
}
