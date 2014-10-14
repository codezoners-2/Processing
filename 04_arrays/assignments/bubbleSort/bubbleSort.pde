int myArrayLength = 50;
int [] myArray = new int [myArrayLength];
boolean sorted = false;

void setup () {
  size (600, 600);
  background (255);
  frameRate(10);

  for (int i = 0; i < myArrayLength; i++) {
    myArray[i] = int(random(height));
  }
}

void draw() {
  background(255);
  fill(200,0,200);

  visualizeArray();

  if (!sorted) bubbleSort(); 
  else noLoop();

}

void bubbleSort()
{
  int tempStorage;
  sorted = true;

  for (int i=0; i < myArray.length - 1; i++)
  {
    if (myArray[i] > myArray[i+1])
    {
      tempStorage = myArray[i];
      myArray[i] = myArray[i+1];
      myArray[i+1] = tempStorage;
      sorted = false;
    }
  }
}

void visualizeArray()
{
  int rectWidth = width/myArrayLength;

  for (int x=0; x<myArray.length; x++)
  {
    rect(x * rectWidth, 0, rectWidth, myArray[x]);    
  }
}
