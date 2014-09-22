void setup()
{
   size(300,300);
   background(255); 
}

void draw()
{
   int colour=mouseX;
   colour = constrain(colour, 0, 125);
   fill(colour);
   ellipse(width/2, height/2, 100, 100);
}
