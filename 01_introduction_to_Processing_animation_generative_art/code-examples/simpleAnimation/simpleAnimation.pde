int circleX = 25;
int circleY = 100;

void setup()
{
  size(200, 200);
  stroke(0);
  fill(175);
  smooth();
}

void draw()
{
  background(255);
  ellipse(circleX, circleY, 15, 15);
  circleX = circleX + 1;
}
