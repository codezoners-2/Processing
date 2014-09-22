int circleX = 25;
int circleY = 150;
int stepX = 2;

void setup()
{
  size(300, 300);
  stroke(0);
  fill(175);
  smooth();
}

void draw()
{
  background(255);
  ellipse(circleX, circleY, 15, 15);
  circleX = circleX + stepX;
  
  if (circleX > width || circleX < 0)
  {
    stepX = stepX * -1;    
  }
}
