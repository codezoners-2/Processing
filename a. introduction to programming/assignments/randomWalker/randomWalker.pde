float lastLocX;
float lastLocY;

void setup()
{
  size(400, 400);
  background(0);
  stroke(255);
  lastLocX = width/2;
  lastLocY = height/2;
}

void draw()
{ 
  float stepX = random(-10,10);
  float stepY = random(-10,10);
  
  float newLocX = lastLocX + stepX;
  float newLocY = lastLocY + stepY;
  
  line(lastLocX, lastLocY, newLocX, newLocY);
  lastLocX = newLocX;
  lastLocY = newLocY;
}
