float posX;
float posY;
float directionX;
float directionY;

void setup()
{
  size(500, 500);
 
  stroke(0);
  fill(175);
 
  posX = random(0, width);
  posY = random(0, height);
 
  directionX = random(-5,5);
  directionY = random(-5,5);
}

void draw()
{
  background(255);
  drawBall();
  moveBall();
  bounceBall();
}

void drawBall()
{
  ellipse(posX, posY, 15, 15);
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
