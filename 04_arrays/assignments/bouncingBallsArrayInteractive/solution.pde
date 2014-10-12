int numOfBalls = 10;
float[] posX = new float[numOfBalls];
float[] posY = new float[numOfBalls];
float[] directionX = new float [numOfBalls];
float[] directionY = new float [numOfBalls];
float[] radius = new float [numOfBalls];
float[] diamArray = new float[numOfBalls];
boolean[] ballState = new boolean[numOfBalls];

void setup()
{
  size(500, 500);
  stroke(0);
  //  fill(175);
  for (int i=0; i<numOfBalls; i++)
  {
    posX[i] = random(0, width);
    posY[i] = random(0, height);
    directionX[i] = random(-5, 5);
    directionY[i] = random(-5, 5);
    diamArray[i] = random(3, 30);
    ballState[i] = true;
  }
}
void draw()
{
  background(255);
  drawBalls();
  moveBalls();
  bounceBall();
  ballUserInteraction(mouseX, mouseY);
  ballBallInteraction();
  restartIfAllDead();
}
void drawBalls()
{
  for (int i=0; i<numOfBalls; i++)
  {
    if (ballState[i])
    {
      fill(255);
    } else {
      fill(0);
    }
    ellipse(posX[i], posY[i], diamArray[i], diamArray[i]);
  }
}

void moveBalls()
{
  for (int i=0; i<numOfBalls; i++)
  {
    posX[i] = posX[i] + directionX[i];
    posY[i] = posY[i] + directionY[i];
  }
}

void bounceBall()
{
  for (int i=0; i<numOfBalls; i++)
  {
    if (( posX[i] > width) || (posX[i] < 0))
    {
      directionX[i] = directionX[i] * -1;
    }
    if ((posY[i] > height) || (posY[i] < 0))
    {
      directionY[i] = directionY[i] * -1;
    }
  }
}

void ballUserInteraction(int x, int y)
{
  for (int i=0; i<numOfBalls; i++)
  {
    if (dist(x, y, posX[i], posY[i]) < diamArray[i]/2)
    {
      ballState[i] = false;
    }
  }
}

void ballBallInteraction()
{
  for (int i=0; i<numOfBalls; i++)
  {
    for (int j=0; j<numOfBalls; j++)
    {
      if (dist(posX[i], posY[i], posX[j], posY[j])<(diamArray[i]/2+diamArray[j]/2))
      {
        if (ballState[i] == false || ballState[j] == false)
        {
          ballState[i] = false;
          ballState[j] = false;
        }
      }
    }
  }
}

void restartIfAllDead()
{
  boolean haveFinished = true;

  for  (int i=0; i<numOfBalls; i++)
  {
    if (ballState[i]==true)
    {
      haveFinished = false;
    }
  }

  if (haveFinished==true)
  {
    for (int i=0; i<numOfBalls; i++)
    {
      ballState[i] = true;
    }
  }
}
