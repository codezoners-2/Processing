void setup()
{
  size(300, 300);
  fill(0);
  rectMode(CENTER);
}

void draw()
{
  background(255);  
  line(width/2, 0, width/2, height);
  
  if (mouseX <= 150)
  {
    ellipse(width/2, height/2, 100, 100);
  }
  else if (mouseX > 150)
  {
    rect(width/2, height/2, 100, 100);
  }
}
