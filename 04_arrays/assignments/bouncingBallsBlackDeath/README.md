# bouncingBallBlackDeath

Start with the code from bouncingBallArrayInteractive and make the following changes to simulate a Black Death scenario.

## Step-by-step:

1. Change the ballUserInteraction() function so that the if statement also checks if the mousePressed variable is true, so that we infect balls only if the mouse is pressed AND we are on top of a ball.
2. Remove the restartIfAllDead() function.
3. Increase the number of balls to 200.
4. Change the ballState array from type boolean to type float and initialize it's values inside setup()'s for loop to 255 instead of true. Also ammend the drawBalls() function so that it uses the value inside the ballState for the color of the ball. Also ammend the ballUserInteraction function so that if the user presses on a ball it becomes 0 rather than false.
5. Ammend the ballBallInteraction() so that you check if a ball is less than 255 (sick) rather than if it is false in order to infect the other. Make sure that each ball does not check itself (i!=j). At this point we should have what we had in the previous version of the program. But this is where the fun begins.
6. Create a global variable cureRate of type float with an initial value of 10.
7. Write a function cureBalls() which loops over the ballState array and adds the amount contained in cureRate every time it is called. Basically the cureRate is used to simulate people getting better over time. Make sure you place a call for it inside the draw() function. Also add a constrain (hint: use the constrain function()), so that the value can not be greater than 255 or less than 0.
8. Create a global array called ballAlive of type boolean. Initialize all values to true (all balls are alive). Ammend your drawBalls() function so that you only draw an ellipse if the entry for the specific ball in the ballAlive table is true.
9. Inside the for loop of the cureBalls() function add the following if statement:
    if (ballState[i]<255 && random(1000)<1) ballAlive[i]=false;
This will kill a sick ball with a likelyhood of 1 in 1000 in each iteraction of the draw() function.
10. Ammend your 2nd if statement inside the for loops of the ballBallInteraction function so that only balls that are alive can infect others. Basically add one more && ballAlive[i]==true && ballAlive[j]==true.
11. Inside the for loop of the cureBalls() function add an if statement which checks:
  1. if the ballState of that ball is less than 255 (if it is still sick) &&
  2. if random(1000)<1.
If both of these conditionals are true then set ballAlive to false.
