void setup()
{
  int number = 5;
  println("from setup : " + number);
  doubleIt(number);
  println("from setup2: " + number);
}

void doubleIt(int num)
{
  num = num * 2;
  println("from doubleIt: " + num); 
}
