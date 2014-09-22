/**
 * Simple Particle System
 * based on Daniel Shiffman's example
 * Particles are generated each cycle through draw(),
 * fall with gravity and fade out over time
 * A ParticleSystem object manages a variable size (ArrayList) 
 * list of particles. 
 */
 
ParticleSystem ps;

void setup() {
  size(640,360);
  ps = new ParticleSystem();
}

void draw() {
  background(0);
  ps.addParticle(new PVector(mouseX, mouseY));
  ps.run();
}
