void setup() {
  size(480, 480);
  smooth();
  strokeWeight(3);
  ellipseMode(RADIUS);
}

void draw() {
  background(224);

  //// Keraia
  stroke(153);
  strokeWeight(3);
  line(100-5, 100-55, 100-5, 100-40);
  noStroke();
  fill(153);
  ellipse(100-5, 100-65, 2, 2); // mikros kyklos
  noFill();
  stroke(255, 252, 167); // kitrino
  strokeWeight(2);
  ellipse(100-5, 100-65, 8, 8); // megalos kyklos

  //// Kefali
  noStroke();
  fill(124,0,0); // kokkino
  quad(100-40, 100-40, 100+30, 100-40, 100+25, 100+50, 100-35, 100+50); // kefali
  fill(255);
  ellipse(100-20, 100-10, 12, 12);  // Megalo mati
  fill(153);
  ellipse(100-20, 100-10, 5, 5);  // mikro mati aristera
  ellipse(100+10, 100-10, 5, 5);  // mikro mati deksia
  stroke(153);
  strokeWeight(3);
  line(100-25, 100+25, 100+15, 100+25); //stoma
}

