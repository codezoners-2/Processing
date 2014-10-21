# spaceInvaders
### copyright Theodoros Papatheodorou (contact@artech.cc)

Start with the code structure provided, keep the names I propose and remember the first commandment: "incremental development".

## Step-by-step:

### Spaceship Class (good guy)
1. Inside the Spaceship class already provided add a variable of type PImage called spaceshipIcon, two type int called posX, posY, posY, boolean called isDead.
2. Inside the construction of Spaceship call the fuction to load the image like they do [here](https://www.processing.org/reference/PImage.html). Load the image spaceship.png found inside the data folder. Set the initial value of posY equal to height-50, posX equal to width/2 and the isDead equal to false. All inside the constructor of the class.
3. Write a function drawShip() which calls the image() command like they do [here](https://www.processing.org/reference/PImage.html) in order to display the spaceShipIcon at location posX, posY.
4. Write a function called run() which calls on the drawShip() function.
5. Go to the spaceInvaders tab and uncomment the first line that creates the Spaceship object, the line inside the setup() function that calls the constructor of the Spaceship object and the line inside the draw() function that runs the Spaceship object. By this point, when you run your program you should see a Spaceship at the bottom of your screen and nothing else.
6. Inside the Spaceship class, add a function called goLeft() which moves the Spaceship ten pixels to the left by subtracting from the posX variable, and a function goRight() by adding to the posX variables. In both cases add also a call to the function constrain() like the do [here](https://www.processing.org/reference/constrain_.html) so that the value of posX inside goLeft() is limited between 0 and width and something similar for goRight().
7. In the main tab called spaceInvaders, inside the keyPressed() function add code that checks if the user has pressed the letter 'm'. See how we check for the key value [here](https://www.processing.org/reference/key.html). If he has call the goRight() function on the Spaceship object, if he has pressed the letter 'n' call the goLeft() function. By this point when you run you code, as you press m/n your spaceship moves left/right


### Bullet Class
1. Inside the Bullets class create three variables of type int called posX, posY and direction and a boolean called bulletActive.
2. Inside the constructor of the Bullet class, initialize posX to -10, posY to -10 (they are out of the screen), direction to _direction, the parameter we pass to the constructor and bulletActive equal to true.
3. Write a fire() function that takes two parameters of type int called _x and _y. It contains an if statement that checks to see if the bulletActive boolean is equal to true and if it is it sets the posX of the bullet equal to the passed parameter _x and similarly for the posY variable.
4. Write a drawBullet() function that calls the fill and sets it to white and then draw a rectangle at posX, posY of width 5 and height 10.
5. Write a move() function that updates the posY by the amount inside direction (hint: posY = posY+direction). It also contains an if statement that if a bullet is currently fired inside the canvas (posY>0 and posY<height) then it sets the bulletActive to false, otherwise it sets it to true. This is because until a bullet that has been fired either by the aliens or then good guy has left the canvas we don't want to fire again (it takes time to reload the pistol).
6. Write a run() function that calls both the drawBullet() and the move() function.
7. Go back to your Spaceship class and add an attribute/variable of type Bullet called "b". Inside the constructor of the Spaceship call the constructor of the "b" object. Note that it takes a parameter, the direction of firing. We are going to be using the Bullet class both for the goodGuy and the aliens, but we want them to be firing different directions. So make sure the goodGuy passes as a parameter -10 (it's going upwards). Inside the Spaceship class add a shoot() function that calls the fire function of your b object (Bullet) and passes to it as parameters the location of the ship plus a minor adjustment so that the bullet comes out from the middle of the ship. Also, inside the run() function of the Spaceship class, call the run() function of the b object (bullet).
8. Go to the main tab and inside the keyPressed() function add another else if statement that checks if the 's' key has been pressed. If it has been pressed() then call the shoot() function of the spaceship object (goodGuy). By this point the spaceship should be moving left/right and you should be able to fire when you press 's'.

### Alienship Class
1. Inside the Alienship tab, add a variable of type PImage called alienIcon, three variables of type int called posX, posY and speed, an object of type Bullet called "b" and a boolean isDead.
2. Inside teh constructor of the Alienship load the image alienship.png, initialize posX to _x, posY to _y, set the speed to -3, call the constructor of the Bullet with parameter 10 (it's going downwards) and set the isDead flag to false.
3. Write a drawShip function that calls the image command to draw the alienIcon at position posX, posY.
4. Write a move() function that updates the posX by speed (hint: posX = posX + speed).
5. Write a bounce() function that checkes to see if the alien ship's posX value is less than 0 or greater than width (plus a little modification) and if it is it adds 50 to posY and reverses the sign (direction) on the speed variable by multiplying by -1.
6. Write a shoot() function that calls the fire() function of the b object (Bullet) of the alienship passing it as parameters the location of the alienship (posX, posY) plus a little something so that it fires from the middle of the alienship.
7. Write a run() function which contains an if statement that checks to see if the isDead variable is false. If it is false (the alien is alive) then it calls the run() function on the "b" object, and the move(), bounce(), drawShip() functions of the alien. Inside this if statement also add the following line which randomly allows the aliens to shoot at the good guy.
  ```
  if (random(1000)<2) shoot();
  ```

### AlienSystem Class
1. Uncomment the AlienSystem class. The sole purpose of this class is to create and run 10 instances of Alienships. The behaviors of each ship are defined by the Alienship class. The Alien ships are created in the top, they are initialized in the constructor of the class (notice the for loop) and they are run in the run() function (notice again the for loop).
2. One of the responsibilities of this class is to call the checkCollisions function which checks:
  1. if a goodGuy bullet has hit any alien ship and sets the alienship isDead flag to true
  2. if an alien bullet has hit the goodGiy and sets the goodGuy isDead flag to true
  3. if an alien ship has touched the goodGuy and sets the goodGuy isDead flag to true
3. The other responsibility is to check if all the aliens are dead and return a true/false when we call the areAllAliensDead().


### Main tab
1. Uncomment the lines marked as "RUNNING THE SYSTEMS" inside the draw() function. This should get the program running. It's almost there, but there is no killing taking place.
2. Uncomment the lines marked as "CHECKING THE SCORES" inside the draw() function. These lines call the areAllAliensDead() function on the AlienSystem class and check the isDead flag of the goodGuy and they print a YOU WIN! / YOU LOSE depending on which of the two has happened.

All done. Happy killings :)
