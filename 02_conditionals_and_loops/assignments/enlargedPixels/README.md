# enlargedPixels:

Write a program that does [this](http://artech.cc/_class_material_/exercises/week4/exercise3_nestedLoop/) (move the mouse to see what it’s doing).

###Step-by-step:

1. define a global variable int boxSize=20;
2. draw a white background and define a black stroke
3. write a for loop that draws squares in the X-axis (look into the [nestedLoop example](http://artech.cc/acgCode/acg2014spr.git/blob/master/week_3/nestedForLoop/nestedForLoop.pde)). The squares must be of size boxSize and be drawn in steps of boxSize (every “boxSize” pixels)
4. write a second loop inside the previous one in order to draw boxes along the Y-axis. Once again squares must be drawn every “boxSize” pixels along the Y axis
5. using the command [dist()](http://www.processing.org/reference/dist_.html) fill the squares with color depending on the distance of each box from the mouse (mouseX, mouseY)
6. since the distance can be greater than 255 and colors can’t you must use the [constrain()](http://www.processing.org/reference/constrain_.html) function to limit the value
