class Bullet
{
  //CLASS VARIABLES/ATTRIBUTES
  int posX;
  int posY;
  boolean bulletActive;
  int direction;

  //CLASS CONSTRUCTOR
  Bullet(int _direction)
  {
    posX = -10;
    posY = -10;
    direction = _direction;
    bulletActive = true;
  }

  //CLASS FUNCTIONS
  void fire(int _x, int _y )
  {
    if (bulletActive ==true)
    {
      posX = _x;
      posY = _y;
    }
  }

  void drawBullet()
  {
    fill(255);
    rect(posX, posY, 5, 10);
  }

  void move()
  {
    posY = posY + direction;
    if (posY>0 && posY<height) bulletActive = false;
    else bulletActive = true;
  }

  void run()
  {
    drawBullet();
    move();
  }
}

