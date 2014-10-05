int numOfBalls = 10;
float[] posX = new float[numOfBalls];
float[] posY = new float[numOfBalls];
float[] directionX = new float [numOfBalls];
float[] directionY = new float [numOfBalls];
float[] radius = new float [numOfBalls];

void setup()
{
  size(500, 500);
  stroke(0);
  fill(175);

  for (int x=0; x<numOfBalls; x++)
  {
    posX[x] = random(0, width);
    posY[x] = random(0, height);
    directionX[x] = random(-5, 5);
    directionY[x] = random(-5, 5);
  }
}

void draw()
{
  background(255);
  drawBalls();
  moveBalls();
  bounceBall();
}

void drawBalls()
{
  for (int x=0; x<numOfBalls; x++)
  {
    ellipse(posX[x], posY[x], 15, 15);
  }
}

void moveBalls()
{
  for (int x=0; x<numOfBalls; x++)
  {
    posX[x] = posX[x] + directionX[x];
    posY[x] = posY[x] + directionY[x];
  }
}

void bounceBall()
{
  for (int x=0; x<numOfBalls; x++)
  {
    if (( posX[x] > width) || (posX[x] < 0))
    {
      directionX[x] = directionX[x] * -1;
    }
    if ((posY[x] > height) || (posY[x] < 0))
    {
      directionY[x] = directionY[x] * -1;
    }
  }
}
