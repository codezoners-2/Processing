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
    posX = random(0, width);
    posY = random(0, height);
    directionX = random(-5, 5);
    directionY = random(-5, 5);
    diam = random(5, 30);
    colorR = random(255);
    colorG = random(255);
    colorB = random(255);
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
    if (( posX > width) || (posX < 0))
    {
      directionX = directionX * -1;
    }
    if ((posY > height) || (posY < 0))
    {
      directionY = directionY * -1;
    }
  }
}

