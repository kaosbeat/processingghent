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
  
  void update() {
    x+=speed*cos(radians(angle));
    y+=speed*sin(radians(angle));
    angle+=random(0.34);
    speed*=0.994;
  }
  
  void render() {
  noFill();
  stroke(234,4,56,10);
  ellipse(x,y,20*speed,20*speed);
  }
}
