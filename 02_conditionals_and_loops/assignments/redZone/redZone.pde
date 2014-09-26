int posX = 25;
int posY = 100;
int directionX = 4;
int directionY= 5;

void setup()
{
  size(500, 500);
  stroke(0);
  fill(175);
}

void draw()
{
  background(255);
  posX = posX + directionX;
  posY = posY + directionY; 

  if (( posX > width) || (posX < 0))
  {
    directionX = directionX * -1;
  }
  if ((posY > height) || (posY < 0))
  {
    directionY = directionY * -1;
  }

  ellipse(posX, posY, 20, 20);
}

