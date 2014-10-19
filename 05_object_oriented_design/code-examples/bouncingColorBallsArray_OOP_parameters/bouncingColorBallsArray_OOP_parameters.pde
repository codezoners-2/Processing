int numOfBalls = 20;
Ball[] myBalls = new Ball[numOfBalls];

void setup()
{
  size(500, 500);

  for (int x=0; x<myBalls.length; x++)
  {
    myBalls[x] = new Ball(random(width), random(height), random(-5,5), random(-5,5), random(10,30), random(255), random(255), random(255));
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

