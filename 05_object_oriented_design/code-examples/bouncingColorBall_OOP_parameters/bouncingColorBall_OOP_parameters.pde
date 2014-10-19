Ball myBall1, myBall2;

void setup()
{
  size(500, 500);
  myBall1 = new Ball(5, 4, 2, 4, 20, 255, 0, 0);
  myBall2 = new Ball(10, 3, 1, 4, 10, 0, 255, 0);
}

void draw()
{
  background(255);
  myBall1.drawBall();
  myBall1.moveBall();
  myBall1.bounceBall();

  myBall2.drawBall();
  myBall2.moveBall();
  myBall2.bounceBall();
}
