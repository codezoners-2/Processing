int circleX = 25;
int circleY = 150;
int stepX = 2;
int stepY = 3;

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
  circleX =  circleX + stepX;
  circleY = circleY + stepY;
}

void bounceBall()
{
  if (circleX > width || circleX < 0)
  {
    fill(255, 0, 0);
    stepX = stepX * -1;
  }

  if (circleY > height || circleY < 0)
  {
    fill(255, 0, 0);
    stepY = stepY * -1;
  }
}

void keyPressed()
{
  if (key == 'f' || key == 'F')
  {
    if (stepX>0) stepX =stepX + 1;
    else stepX = stepX - 1;

    if (stepY>0) stepY = stepY+1;
    else stepY = stepY - 1;
  }

  if (key =='s' || key=='S')
  {
    if (stepX>0) stepX=stepX - 1;
    else stepX = stepX + 1;

    if (stepY>0) stepY=stepY-1;
    else stepY = stepY + 1;
  }
  stepX = constrain(stepX, -10, 10);
  stepY = constrain(stepY, -10, 10);
}

