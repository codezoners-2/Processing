int rectHeight=2;
float locX;
float locY=-10;
boolean justOnce = true;
float dropR = 0;
float dropG = 0;
float dropB = 150;
float oceanR = 0;
float oceanG = 0;
float oceanB = 150;

PImage fishImg;
int fishLocX;
int fishLocY;

void setup()
{
  size(500, 500); 
  locX = random(0, width);
  noStroke();
  fishImg = loadImage("fish.png");
  fishLocX = -200; //start outside the screen (we don't want the fish to start before the user presses the "f" button)
  fishLocY = height-30;
}

void draw()
{  
  background(255);

  drawDroplet();
  drawOcean();
  drawPebbles();
  drawFish();
}

void drawFish()
{
  image(fishImg, fishLocX, fishLocY, 60, 49);
  fishLocX=fishLocX-2;
  
  if ((millis()/1000) % 10 == 0) //divide by 1000 to convert milliseconds to seconds and then use % to start fish every 10 seconds.
  {
      fishLocX = width;
      fishLocY = height-30;
  }
}


void drawDroplet()
{
  fill(dropR, dropG, dropB);
  triangle(locX-13, locY, locX+13, locY, locX, locY-25);
  ellipse(locX, locY, 25, 25);
  locY+=6;
}

void drawOcean()
{
  fill(oceanR, oceanG, oceanB);
  rect(0, height-rectHeight, width, height);

  //drop touches water
  if (locY>height-rectHeight)
  {
    rectHeight = rectHeight + 6;

    //give ocean the color of the drop
    oceanR = dropR;
    oceanG = dropG;
    oceanB = dropB;

    //give new drop new random color
    dropR = random(255);
    dropG = random(255);
    dropB = random(255);

    //send new drop to the top
    locY =0;
    locX = random(0, width);
  }

  //reached the top
  if (rectHeight>height)
  {
    rectHeight = 0;
  }
}

void drawPebbles()
{
  for (int x=0; x<60; x++)
  {
    fill(random(100, 255));
    ellipse(x*10, height, 7, 7);
  }
}

void keyPressed()
{
  locX = random(0, width);
  locY = 0;

  //give new drop new random color
  dropR = random(255);
  dropG = random(255);
  dropB = random(255);
}
