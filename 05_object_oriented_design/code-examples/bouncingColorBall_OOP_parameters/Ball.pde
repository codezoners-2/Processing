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

  Ball(float _posX, float _posY, float _dirX, float _dirY, float _diam, float _colorR, float _colorG, float _colorB)
  {
    posX = _posX;
    posY = _posY;
    directionX = _dirX;
    directionY = _dirY;
    diam = _diam;
    colorR = _colorR;
    colorG = _colorG;
    colorB = _colorB;
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

