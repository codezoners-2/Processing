int circleX = 25;
int circleY = 150;
int stepX = 2;
int stepY = 3;
int dirX = 1;
int dirY = 1;

void setup()
{
  size(300, 300);
}

void draw()
{
  background(255);
  drawBall(circleX, circleY);
  moveBall();
  bounceBall();
}

void drawBall(int x, int y)
{
  stroke(0);
  int circleDiameter = 30;
  float d = dist(mouseX, mouseY, x, y);

  if (d < circleDiameter / 2.0) //we divide by two because we want to use the radius of the circle
  {
    fill(0);
  }
  ellipse(x, y, circleDiameter, circleDiameter);
}

void moveBall()
{
  circleX =  circleX + (stepX * dirX);
  circleY = circleY + (stepY * dirY);
}

void bounceBall()
{
  if (circleX > width || circleX < 0)
  {
    fill(255, 0, 0);
    dirX = dirX * -1;
  }

  if (circleY > height || circleY < 0)
  {
    fill(255, 0, 0);
    dirY = dirY * -1;
  }
}

void keyPressed()
{
  if (key == 'f' || key == 'F')
  {
    stepX = stepX + 1;
    stepY = stepY + 1;
  }

  if (key =='s' || key=='S')
  {
    stepX = stepX - 1;
    stepY = stepY - 1;
  }

  stepX = constrain(stepX, 1, 10);
  stepY = constrain(stepY, 1, 10);
}
