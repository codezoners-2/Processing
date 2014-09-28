int d = 50;

void setup()
{
  size(400,400);
  background(255);
  smooth();
}

void draw()
{
  background(255);
  drawShape(mouseX, mouseY, d);
}


void drawShape(int posX, int posY, int diameter)
{
  noStroke();
  fill(255, 0, 255);
  ellipse(posX, posY, diameter, diameter);
  ellipse(posX, posY + diameter, diameter, diameter);
  ellipse(posX + diameter, posY, diameter, diameter);  
  ellipse(posX + diameter, posY + diameter, diameter, diameter);
}
