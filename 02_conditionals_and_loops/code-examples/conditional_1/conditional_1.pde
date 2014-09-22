void setup()
{
  size(300, 300);
  fill(0);
}

void draw()
{
  background(255);
  line(width/2, 0, width/2, height);  

  if (mouseX > 150)
  {
    ellipse(width/2, width/2, 100, 100);
  }
}
