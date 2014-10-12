# buttonGrid

Use the code provided here to program interaction.

### step-by-step:
1. Create two global variables of type int called noOfRows and noOfColumns which will store the number of rows/columns in an array. Make them both equal to 20.
2. Create two global variables of type int called buttonWidth and buttonHeight both equal to 25.
3. Create a global two-dimensional array of type float called buttonStates which is of size noOfRows x noOfColumns.
3. Inside setup() create a canvas of 500x500 pixels.
4. Create a nested for loop in order to read + manipulate the 2D array. Inside the nested loop call the "rect" command so that you draw a grid of rectangles that fills the screen. Each rectangle is of size buttonWidth x buttonHeight. Use the local variables created in the for loops (the indexes) along with the buttonWidth and buttonHeight in order to draw the rectangle in a specific location. By this point you should see a 25 x 25 grid of rectangles.
5. Set the fill equal to the specific value contained in the buttonStates[][] array. When you run your code now, the boxes should be all black.
6. Use the mousePressed <strong>variable</strong> and not the function inside the nested loops in order to detect when a user has clicked on the canvas. How can you tell on which square the user has clicked? (Hint: use buttonWidth and buttonHeight to find the box you have clicked on.) If the user has clicked on the canvas then increase the specific value in the buttonStates[][] array by 0.02. By this point, the longer you click on a square the whiter it should get.
7. Add a constrain right below step no.6 so that you limit the value between 0 and 255.
