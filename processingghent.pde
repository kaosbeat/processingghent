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
  p=new Particle();
  p.x=400.0;
  p.y=400.0;
  p.speed=1.0;
  p.angle=random(360.0);;
}



void update () {
    p.x+=p.speed*cos(radians(p.angle));
    p.y+=p.speed*sin(radians(p.angle));
    //p.angle+=random(0.34);
    //p.speed[i]*=0.994;
    //p.size[i]=speed[i]*40;
  
}


void render() {
  noFill();
  stroke(234,4,56,10);
  ellipse(p.x,p.y,40,40);

}
