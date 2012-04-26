class Particle {
  float x;
  float y;
  float speed;
  float angle;
  float spin;
  float radius;

  Particle() {
  
  }

  Particle(float x, float y, float a, float v) {
    this.x = x;
    this.y = y;
    speed = v; // no need for "this" reference, beacause not referenced in def
    this.angle = a; // it is allowed though
    spin=0.0;
  }
}
