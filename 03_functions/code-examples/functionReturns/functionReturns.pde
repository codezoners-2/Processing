void setup()
{
  size(400, 400);
  background(255);
  smooth();
}

void draw()
{
  background(255);
  noStroke();
  fill(198, 56, 56);

  int diameter = addPositions(mouseX, mouseY);
  ellipse(width/2, height/2, diameter, diameter);

  //alternative version 
  //ellipse(width/2, height/2, addPositions(mouseX, mouseY), addPositions(mouseX, mouseY));
}

int addPositions(int x, int y)
{
  return x+y;
}

