class Particle {
  
  ///there be dragons
  //made at processingGhent 2012-04-26
  //Kasper Jordaens @kaosbeat
  float x;
  float y;
  float speed;
  float angle;
  float spin;
  float sizeY;
  int opac ;
  float radius;
  boolean changedangle;
  boolean splitIt;
  boolean splitIt2;

  Particle() {
    this.x = 300.0;
    this.y = 300.0;
    this.angle = random(360.0);
    this.speed = 1.0;
    this.spin=0.0;
    this.opac = 10;
    this.changedangle=false;
    this.splitIt=false;
    this.splitIt2=false;
    this.sizeY = 1.0;
  }

  Particle(float x, float y, float a, float v) {
    this.x = x;
    this.y = y;
    speed = v; // no need for "this" reference, beacause not referenced in def
    this.angle = a; // it is allowed though
    
  }
  
  void update() {
    x+=speed*cos(radians(angle));
    y+=speed*sin(radians(angle));
    angle+=random(0.34);
    speed*=0.9994;
    if (speed < 0.8 && !changedangle ) {
      angle+=90; 
      changedangle = true;
    }
    if (speed < 0.7 && speed > 0.6) {
      sizeY*=1.008;  
    }
    if (speed < 0.65 && !splitIt) { 
      angle -=40;
      splitIt = true;
    }
        if (speed < 0.4 && !splitIt2) { 
      angle +=30;
      opac = int(random(255));
      splitIt2 = true;
      
    }
    
  }
  
  void render() {
    noFill();
    stroke(234,4,56,opac);
    ellipse(x,y,20*speed,sizeY*speed);
    if(splitIt == true){
      stroke(4,114,156,60);
      ellipse(x,1.2*y,20*speed,sizeY*speed);
    }  
        if(splitIt2 == true){
          
      stroke(4,1,156,opac);
      ellipse(1.6*x,1.02*y,20*speed,sizeY*speed);
    }  
    
  }
}
