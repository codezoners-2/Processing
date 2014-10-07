# ball snake

recreate [this](http://artech.cc/_class_material_/exercises/codezoners/ballSnake/). Start by using the code provided below and then add the following steps.

### step-by-step:
1. Create a for loop inside the setup() function that initializes the xpos and ypos array to width/2 and height/2 respectively. Remember to use the length variable to check on the size of the array in the for loop conditional.
2. Write a function drawSnake() that contains a for loop that loops through the xpos and ypos arrays and draws an ellipse in each of the locations contained in the two arrays. Make the ellipses of size 20. At this point you should see just one ellipse in the center of the screen since all positions inside our xpos, ypos arrays have the same value (the center of the screen).
3. Write a function updateValues(), which contains a for loop that shifts all values down one spot. That means that xpos[0] will get the value inside xpos[1], xpos[1] will get the value of xpos[2] and so on. Attention! What should the conditional be in the for loop?
4. Inside the updateValues() function add two lines of code that fill the last positions of the arrays with the current mouseX and mouseY respectively. What we have done now in step 2 and step 3 is we have shifted the values one position downwards, therefore overwriting the first cell in the array and we then updated the last cell with the latest mouse position.
5. Inside the for loop of the drawSnake() function ammend the ellipse() command so that each ellipse has the size of its position in the array.
6. Inside the for loop of the drawSnake() function add a fill command so that each ellipse has a greyscale color relative to its position in the array Hint: fill(255 - positionInTheArray*5);
