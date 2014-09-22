boolean button = false;
int x = 50;
int y = 50;
int w = 100;
int h = 100;

void setup()
{
  size(200,200);
  noStroke();
}

void draw()
{
  if (button)
  {
    background(255);
  }
  else
  {
    background(0);
  }
  
  fill(175);
  rect(x,y,w,h);
}

void mousePressed()
{
  if (true)
  {
    button = !button;
  }  
}
