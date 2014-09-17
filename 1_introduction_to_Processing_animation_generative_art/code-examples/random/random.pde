void setup()
{
  size(displayWidth/2, displayHeight/2); 
  noStroke();
}

void draw()
{
  fill(random(0, 255), random(0, 255), random(0, 255), random(0, 255)); 
  ellipse(random(0, width), random(0, height), 30, 30);
}
