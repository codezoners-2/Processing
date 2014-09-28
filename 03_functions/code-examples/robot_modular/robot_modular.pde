void setup() {
  size(400, 400);
  smooth();
}

void draw() {
  background(224);
  drawRobot(100, 100);
  //  drawRobot(mouseX, mouseY);
}


void drawRobot(float x, float y)
{
  //// Keraia
  stroke(153);
  strokeWeight(3);
  line(x-5, y-55, x-5, y-40);
  noStroke();
  fill(153);
  ellipse(x-5, y-65, 2, 2); // mikros kyklos
  noFill();
  stroke(255, 252, 167); // kitrino
  strokeWeight(2);
  ellipse(x-5, y-65, 8, 8); // megalos kyklos

  //// Kefali
  noStroke();
  fill(124, 0, 0); // kokkino
  quad(x-40, y-40, x+30, y-40, x+25, y+50, x-35, y+50); // kefali
  fill(255);
  ellipse(x-20, y-10, 12, 12);  // Megalo mati
  fill(153);
  ellipse(x-20, y-10, 5, 5);  // mikro mati aristera
  ellipse(x+10, y-10, 5, 5);  // mikro mati deksia
  stroke(153);
  strokeWeight(3);
  line(x-25, y+25, x+15, y+25); //stoma
}

