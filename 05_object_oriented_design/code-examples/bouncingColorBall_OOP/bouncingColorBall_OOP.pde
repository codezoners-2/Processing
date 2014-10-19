Ball myBall;

void setup()
{
  size(500, 500);
  myBall = new Ball();
}

void draw()
{
  background(255);
  myBall.drawBall();
  myBall.moveBall();
  myBall.bounceBall();
}
