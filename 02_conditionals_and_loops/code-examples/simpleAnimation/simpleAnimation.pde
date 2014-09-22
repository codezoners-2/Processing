int circleX = 25;
int circleY = 100;

void setup()
{
  size(200, 200);
  fill(175);
}

void draw()
{
  background(255);
  ellipse(circleX, circleY, 15, 15);
  circleX = circleX + 1;
}
