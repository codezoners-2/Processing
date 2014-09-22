int position=0;

void setup()
{
   size(300,300);
   background(255); 
   fill(125);
}

void draw()
{
   background(255);
   ellipse(position, height/2, 30, 30);
   position=position+2;
   position=constrain(position,0,width-15);
}
