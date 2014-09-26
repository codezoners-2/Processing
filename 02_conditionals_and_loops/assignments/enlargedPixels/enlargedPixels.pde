int boxSize = 20;

void setup()
{
  size(500, 500);
  stroke(0);
}

void draw()
{
  background(255);

  for (int x = 0; x < width; x = x + boxSize)
  {
    for (int y = 0; y < height; y = y + boxSize)
    {
      float c = dist(mouseX, mouseY, x, y);
      c = constrain(c, 0, 255);
      fill(c);
      rect(x, y, boxSize, boxSize);
    }
  }
}
