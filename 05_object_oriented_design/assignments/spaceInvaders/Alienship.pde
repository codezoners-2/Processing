class Alienship
{
  //CLASS VARIABLES/ATTRIBUTES
  PImage alienIcon;
  int posX;
  int posY;
  int speed;
  Bullet b;
  Boolean isDead;

  //CLASS CONSTRUCTOR
  Alienship(int _x, int _y)
  {
    alienIcon = loadImage("alienship.png");
    posY = _y;
    posX = _x;
    speed = -3;
    b = new Bullet(10);
    isDead = false;
  }

  //CLASS FUNCTIONS
  void run()
  {
    if (isDead==false)
    {
      b.run();
      move();
      bounce();
      if (random(1000)<2) shoot();
      drawShip();
    }
  }

  void drawShip()
  {
    image(alienIcon, posX, posY);
  }

  void move()
  {
    posX = posX + speed;
  }

  void bounce()
  {
    if (posX<0 || posX>width-alienIcon.width)
    {
      speed = speed * -1;
      posY = posY + 50;
    }
  }

  void shoot()
  {
    b.fire(posX+alienIcon.width/2, posY);
  }
}

