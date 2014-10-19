int buttonWidth = 50;
int buttonHeight = 50;
boolean[] buttonStates = new boolean[10];

void setup()
{
  size(500, 50);
}

void draw()
{
  background(0);

  for (int x=0; x<buttonStates.length; x++)
  {
    if (buttonStates[x]==true) fill(255, 0, 0);
    else fill(255);
    rect(x*buttonWidth, 0, buttonWidth, buttonHeight);
  }
}

void mousePressed()
{
  for (int x=0; x<buttonStates.length; x++)
  {
    if (mouseX>x*buttonWidth && mouseX<x*buttonWidth+buttonWidth && mouseY>0 && mouseY<buttonHeight)
    {
      buttonStates[x] = !buttonStates[x];
    }
  }
}

