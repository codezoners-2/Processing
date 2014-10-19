int numOfBalls = 20;
Ball[] myBalls = new Ball[numOfBalls];

void setup()
{
  size(500, 500);

  for (int x=0; x<myBalls.length; x++)
  {
    myBalls[x] = new Ball();
  }
}

void draw()
{
  background(255);

  for (int x=0; x<myBalls.length; x++)
  { 
    myBalls[x].drawBall();
    myBalls[x].moveBall();
    myBalls[x].bounceBall();
  }
}

