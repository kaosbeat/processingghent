//GOF design patterns

Particle[] particles;
int num;

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
  num=50;
  particles= new Particle[num];
  for(int i=0;i<num;i++) {
    particles[i]=new Particle();
  }
}



void update () {
  for(Particle p:particles) {
    p.update(); 
  } 
}


void render() {
  for(Particle p:particles) {
    p.render(); 
  } 
}
