//CREATE THE OBJECTS
Spaceship goodGuy;
AlienSystem alienSys;

void setup()
{
  size(1000, 500);
  //CALL THE OBJECT CONSTRUCTORS
  goodGuy = new Spaceship();
  alienSys = new AlienSystem();
}

void draw()
{
  background(0);

  //RUNNING THE SYSTEMS
  goodGuy.run();
  alienSys.run();
  alienSys.checkCollisions(goodGuy);
  
  //CHECKING THE SCORES
  if (alienSys.areAllAliensDead() == true)
  {
    textAlign(CENTER);
    text("YOU WIN!", width/2, height/2);
    noLoop();
  } else if (goodGuy.isDead == true)
  {
    textAlign(CENTER);
    text("YOU LOSE!", width/2, height/2);    
    noLoop();
  }
}

void keyPressed()
{
  if (key == 'm') goodGuy.goRight();
  else if (key =='n') goodGuy.goLeft();
  else if (key == 's') goodGuy.shoot();
}
