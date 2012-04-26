//GOF design patterns
Particle p;


void setup () {
 size(600,600);  
 initParticle();
 background(255);
 smooth();
}


void draw() {
 //translate(300,300); 
  update();
  render();
}


void initParticle() {
  //num=50;
  p=new Particle(400.0,400.0, random(360.0),1.0);
}



void update () {
  p.update();  
}


void render() {
  p.render();
}
