# bouncing balls generator

Open up the bouncingBallsInteractive and make the following changes:

### step-by-step:
1. Add a mousePressed function so that every time you press somewhere on screen you add a new ball on the canvas. You'll need to use the append function for arrays (look it up in the Processing reference pages). Remember that each ball has a diameter, a location, a direction. You should fill all of these when a mouse is pressed. Diameter should get a random value between 3 and 20, the two location arrays the values of the mouse and the direction a random value between -5 and 5.

2. Add a keyPressed function which removes a ball when the mouse is on top of it and a key is pressed.
  1. You'll need to write a keyPressed() function that is activated when a keyboard key is pressed.
  2. Create a variable of type int called ballIndex inside the keyPressed() function
  3. Write a for loop that loops through all balls and checks to see if the mouse is on top of one of them. If you are indeed on top of one ball store that balls index (the value of the for loop) inside the ballIndex variable. So at this stage we know at least on which ball we are on top. Write a println(ballIndex) command under the for loop so that everytime you press a button it gives you as an output the ball which you were on top.
  4. Outside the for loop put the code I showed in class about removing balls. Make sure you remove the entry to the ball from all arrays, not just the posX, posY. Otherwise you might encounter problems. Once a ball is removed it is removed from all registries.
