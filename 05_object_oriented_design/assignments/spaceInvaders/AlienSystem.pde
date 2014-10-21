class AlienSystem
{
  //CLASS ATTRIBUTES/VARIABLES
  Alienship[] aliens = new Alienship[10];

  //CLASS CONSTRUCTOR
  AlienSystem()
  {
    for (int x=0; x<aliens.length; x++)
    {
      aliens[x] = new Alienship(x*75, 50);
    }
  }

  //CLASS FUNCTIONS
  void run()
  {
    for (int x=0; x<aliens.length; x++)
    {
      aliens[x].run();
    }
  }

  void checkCollisions(Spaceship ss)
  {
    for (int i=0; i<aliens.length; i++)
    {
      //check for good guy bullets
      if (ss.b.posX > aliens[i].posX && ss.b.posX<aliens[i].posX+aliens[i].alienIcon.width &&
        ss.b.posY > aliens[i].posY && ss.b.posY<aliens[i].posY+aliens[i].alienIcon.height)
      {
        aliens[i].isDead = true;
      }

      //check for bad guys bullets
      if (aliens[i].b.posX > ss.posX && aliens[i].b.posX < ss.posX+ss.spaceshipIcon.width &&
        aliens[i].b.posY > ss.posY && aliens[i].b.posY < ss.posY + ss.spaceshipIcon.height)
      {
        ss.isDead = true;
      }
      
      //check if aliens have collided with good guy
      if (abs(aliens[i].posX - ss.posX) < ss.spaceshipIcon.width &&
          abs(aliens[i].posY - ss.posY) < aliens[i].alienIcon.height)
      {
        ss.isDead = true;
      }
    }
  }

  boolean areAllAliensDead()
  {
    int counter=0;
    for (int x=0; x<aliens.length; x++)
    {
       if (aliens[x].isDead == false) counter++;
    }
    if (counter==0) return true;
    else return false;
  }
}

