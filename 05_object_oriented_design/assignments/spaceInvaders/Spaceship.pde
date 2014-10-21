class Spaceship
{
  //CLASS VARIABLES/ATTRIBUTES
  PImage spaceshipIcon;
  int posX;
  int posY;
  Bullet b;
  boolean isDead;

  //CLASS CONSTRUCTOR
  Spaceship()
  {
    spaceshipIcon = loadImage("spaceship.png");
    posY = height-50;
    posX = width/2;
    b = new Bullet(-10);
    isDead = false;
  }

  //CLASS FUNCTIONS
  void run()
  {
    b.run();
    drawShip();
  }

  void drawShip()
  {
    image(spaceshipIcon, posX, posY);
  }

  void goLeft()
  {
    posX = posX - 10;
    posX = constrain(posX, 0, width);
  }

  void goRight()
  {
    posX = posX + 10;
    posX = constrain(posX, 0, width-spaceshipIcon.width);
  }

  void shoot()
  {
    b.fire(posX+spaceshipIcon.width/2, posY);
  }
}
