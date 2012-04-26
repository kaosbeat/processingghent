//GOF design patterns
Particle p;


void setup () {
 size(600,600); 
 background(255); 
 initParticle();
 smooth();
}


void draw() {
 translate(300,300); 
  update();
  render();
}


void initParticle() {
  p=new Particle(400.0,400.0, random(360.0),1.0);
}



void update () {

    //p.size=speed*40;
  
}


void render() {


}
