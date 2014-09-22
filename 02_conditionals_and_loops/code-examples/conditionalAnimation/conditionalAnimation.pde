int circleX = 0;
int circleY = 100;

void setup()
{
  size(200, 200);
  noStroke();
  fill(255,0,0);
}

void draw()
{
  background(255);
  ellipse(circleX, circleY, 15, 15);

  if (circleX<width)
  {
    circleX = circleX + 1;
  }
}

