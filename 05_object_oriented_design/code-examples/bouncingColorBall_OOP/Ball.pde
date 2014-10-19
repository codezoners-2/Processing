class Ball
{
  float posX;
  float posY;
  float directionX;
  float directionY;
  float diam;
  float colorR;
  float colorG;
  float colorB;

  Ball()
  {
    posX = 10;
    posY = 10;
    directionX = 3;
    directionY = 4;
    diam = 20;
    colorR = 255;
    colorG = 0;
    colorB = 0;
  }

  void drawBall()
  {
    stroke(0);
    fill(colorR, colorG, colorB);
    ellipse(posX, posY, diam, diam);
  }

  void moveBall()
  {
    posX = posX + directionX;
    posY = posY + directionY;
  }

  void bounceBall()
  {
    if (( posX > width) || (posX < 0)) directionX = directionX * -1;
    if ((posY > height) || (posY < 0)) directionY = directionY * -1;
  }
}

