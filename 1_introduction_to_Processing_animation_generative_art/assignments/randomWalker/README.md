# randomWalker:

Write a program that does [this](http://artech.cc/_class_material_/exercises/week2/exercise3/). This is a simple example of a generative program. It will run on its own and generate a different pattern each time.
It is in fact quite similar to the clickLine exercise with a couple of modifications to give it some randomness.

###Step-by-step:

1. Create a global variable lastLocX and lastLocY, both of type float.
2. Write a setup() function which creates the canvas of size 500x500 and of black background. Set the stroke to white and initialize the lastLocX and lastLocY variables to be in the middle of the canvas.
3. Write a draw() function that:
  1. creates two float variables which store two random values between -10 and 10. Let's call these stepX and stepY. 
  2. use these two stepX & stepY variables inside a line() command to draw a line between the lastLocX/lastLocY and this new random location.
  3. before you leave the draw() function make sure you update lastLocX/lastLocY just like we did in the other exercise. We need this in order to know where to start the line from in the next frame.
