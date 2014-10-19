int numOfBalls = 20;
float[] posX = new float[numOfBalls];
float[] posY = new float[numOfBalls];
float[] directionX = new float [numOfBalls];
float[] directionY = new float [numOfBalls];
float[] diam = new float [numOfBalls];
float[] colorR = new float[numOfBalls];
float[] colorG = new float[numOfBalls];
float[] colorB = new float[numOfBalls];

void setup()
{
  size(500, 500);

  for (int x=0; x<numOfBalls; x++)
  {
    posX[x] = random(0, width);
    posY[x] = random(0, height);
    directionX[x] = random(-5, 5);
    directionY[x] = random(-5, 5);
    diam[x] = random(3, 30);
    colorR[x] = random(255);
    colorG[x] = random(255);
    colorB[x] = random(255);
  }
}

void draw()
{
  background(255);
  drawBall();
  moveBall();
  bounceBall();
}

void drawBall()
{
  for (int x=0; x<numOfBalls; x++)
  {
    stroke(0);
    fill(colorR[x], colorG[x], colorB[x]);
    ellipse(posX[x], posY[x], diam[x], diam[x]);
  }
}

void moveBall()
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

