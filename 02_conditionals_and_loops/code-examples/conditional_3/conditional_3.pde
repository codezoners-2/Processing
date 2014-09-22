void setup()
{
  size(300, 300);
  fill(0);
  rectMode(CENTER);
}

void draw()
{
  background(255);  
  line(100, 0, 100, height);
  line(200, 0, 200, height);
  
  if (mouseX <= 100)
  {
    ellipse(width/2, height/2, 100, 100);
  }
  else if (mouseX <=200)
  {
    rect(width/2, height/2, 100, 100);
  }
  else
  {
    //do nothing 
  }
}
