// Declare two arrays with 50 elements.
int[] xpos = new int[50]; 
int[] ypos = new int[50];

void setup() {
  size(500,500);

  for (int i=0; i<xpos.length; i++)
  {
     xpos[i] = 0; 
     ypos[i] = 0;
  }
}

void draw() {
  background(255);
  updateValues();
  drawSnake();  
}

void updateValues()
{
  
}

void drawSnake()
{
  
}
