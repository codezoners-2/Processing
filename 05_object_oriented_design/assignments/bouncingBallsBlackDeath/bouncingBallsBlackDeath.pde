int numOfBalls = 200;
float[] posX = new float[numOfBalls];
float[] posY = new float[numOfBalls];
float[] directionX = new float [numOfBalls];
float[] directionY = new float [numOfBalls];
float[] radius = new float [numOfBalls];
float[] diamArray = new float[numOfBalls];
float[] ballState = new float[numOfBalls];
float cureRate = 10;
boolean[] ballAlive = new boolean[numOfBalls];

void setup()
{
  size(500, 500);
  stroke(0);
  for (int i=0; i<numOfBalls; i++)
  {
    posX[i] = random(0, width);
    posY[i] = random(0, height);
    directionX[i] = random(-5, 5);
    directionY[i] = random(-5, 5);
    diamArray[i] = random(3, 30);
    ballState[i] = 255;
    ballAlive[i] = true;
  }
}
void draw()
{
  background(255);
  drawBalls();
  moveBalls();
  bounceBall();
  ballBallInteraction();
  ballUserInteraction(mouseX, mouseY);
  cureBalls();
}

void drawBalls()
{
  for (int i=0; i<numOfBalls; i++)
  {
    if (ballAlive[i])
    {
      fill(ballState[i]); 
      ellipse(posX[i], posY[i], diamArray[i], diamArray[i]);
    }
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
    if (dist(x, y, posX[i], posY[i]) < diamArray[i]/2 && mousePressed)
    {
      ballState[i] = 0;
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
        if ((ballState[i] < 255 || ballState[j] < 255) && i!=j && ballAlive[i] && ballAlive[j])
        {
          ballState[i] = 0;
          ballState[j] = 0;
        }
      }
    }
  }
}

void cureBalls()
{
  for (int i=0; i<numOfBalls; i++)
  {
    ballState[i] = ballState[i] + cureRate;
    ballState[i] = constrain(ballState[i], 0, 255);
    if (ballState[i]<255 && random(1000)<1) ballAlive[i]=false;
  }
}
