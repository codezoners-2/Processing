# bubbleTrace:

Write a program that does [this](http://artech.cc/_class_material_/exercises/week2/exercise1/) (move the mouse to see what it’s doing).

###Step-by-step:

1. In the setup() function:
  1. Setup a canvas of size 600x600
  2. Set the background to white
2. In the draw() function:
  1. Write a line of code that draws a circle where the mouse is (hint: use mouseX, mouseY)
  2. Above that line create two variables of type float. Each stores a random number between -30 and 30. Call one of them randX and the other randY. We will use these variables to add randomness to our sketch.
  3. Add the variables randX and randY to the ellipse() command you wrote it step 1 so that ellipses are drawn at random locations around the mouse.
  4. Above the ellipse() command add a variable (let's call it randomSize) which stores a random value between 5 and 15. This will be the random radius of the circles.
  5. Modify your ellipse command from step 1 so that it takes this randomSize as a variable. By now ellipses of random size should be drawn on screen.
  6. Add a line above your ellipse() command that call the fill function and give it random values for blue as well as random values for transparency (Note: what will the min/max values in random() be?)
