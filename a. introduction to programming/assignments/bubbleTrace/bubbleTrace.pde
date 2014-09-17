void setup()
{
  size(600, 600);
  background(255);
  frameRate(40);
  noStroke();
}

void draw()
{
  float randX = random(-30, +30); //pick a random location around the mouse in X-coordinate
  float randY = random(-30, +30); //pick a random location around the mouse in Y-coordinate
  float randomSize = random(5, 15);  // pick a random ellipse size

  fill(0, 0, random(75, 255), random(0, 255)); //pick a random shade of blue + random transparency

  ellipse(mouseX + randX, mouseY + randY, randomSize, randomSize); 
}

//when mouse is pressed erase canvas
void mousePressed()
{
  background(255);
}
