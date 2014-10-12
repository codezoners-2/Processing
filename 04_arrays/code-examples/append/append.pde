float[] myArray = new float[2];

void setup()
{
  size(200, 200);
  for (int x = 0; x<myArray.length; x++)
  {
    myArray[x] = random(0, 10);
    println("position " + x + ": " + myArray[x]);
  }
  println("----------------------------------------");
}

void draw()
{
}

void mousePressed()
{
  float aNewNumber = random(0, 10);
  myArray = append(myArray, aNewNumber);

  for (int x=0; x<myArray.length; x++)
  {
    println("position " + x + ": " + myArray[x]);
  }
  println("----------------------------------------");
}

