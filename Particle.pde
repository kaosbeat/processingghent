class Particle {
  float x;
  float y;
  float speed;
  float angle;
  float spin;
  float radius;

  Particle() {
  
  }

  Particle(float x, float y) {
    this.x = x;
    this.y = y;
    speed = 1.0; // no need for "this" reference, beacause not referenced in def
    this.angle = 0; // it is allowed though

}
