# quickSort

Implement the quick sort algorithm visually by following these steps:

### step-by-step:
1. Create a global array call myArray of type int of size 50.
2. In the setup() function set the canvas to 600 x 600, set the background to white. Set the fill to (200,0,200).
3. Using a for loop fill the myArray with random values from 0 to height.
4. Create a global variable of type boolean called "sorted" which is initialized to false. This will store our state. It starts with false because the numbers are not sorted.
5. Create an if statement inside the draw() function which checks the value of "sorted". If "sorted" is true then print all the contents of the array calling the println() function and call noLoop() to stop running the program. Otherwise call the function bubbleSort().
6. Writing bubbleSort():
  1. Create a local variable tempStorage. We'll use this to store values in the array while we are swapping them.
  2. Set the global boolean "sorted" to true. This is now the default state until we are forced to switch values.
  3. Create a for loop that loops through all the values in the array. Make sure it goes up to myArray.length-1. (Why is it -1 and not simply myArray.length?)
  4. Write an if statement comparing the current position in myArray with the next one. If the current value is greater than the one next to it (Hint: i+1) then store the value in the current position in tempStorage, copy the value from the next position to the current, copy back the value in tempStorage inside the next position and set the "sorted" flag to false. Since we made at least one movement within our array we have to set the flag to false. By this point when you run the program it should print out an ordered list of numbers even though in setup you filled the array with random values.
7. Visualizing the sorting:
  1. Create a function called visualizeArray() and make sure you call it from the draw() function.
  1. Create a variable rectWidth of type int which is equal to the width divided by the length of the myArray. This will store how wide our rectangles should be.
  2. Create a for loop which reads myArray and creates rects of width rectWidth and height the values contained in myArray.
8. Set the frameRate inside setup() to 10 to enjoy a smooth progression.
