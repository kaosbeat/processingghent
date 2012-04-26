//GOF design patterns
float[] x,y, speed, angle, psize;
int num;



void setup () {
 size(600,600); 
 background(255); 
 initParticles();
}


void draw() {
 translate(300,300); 
  update();
  render();
}


void initParticles() {
  num = 100;
  x = new float[num];
  y = new float[num];
  speed = new float[num];
  angle = new float[num];
  psize = new float[num];
  
  for (int i = 0; i<num; i++){  
    x[i] = 0;
    y[i] = 0;
    speed[i] = 1.0;
    angle[i] = random(360); 
    psize[i] = 40;

  }
}



void update () {
  for (int i = 0; i<num; i++){ 
    x[i]+=speed[i]*cos(radians(angle[i]));
    y[i]+=speed[i]*sin(radians(angle[i]));
    angle[i]+=random(0.34);
    speed[i]*=0.994;
    psize[i]=speed[i]*40;
  }
}


void render() {
 noFill();
stroke(234,4,56,10);
for (int i = 0; i<num; i++){ 
ellipse(x[i],y[i],psize[i],psize[i]);
}
}
