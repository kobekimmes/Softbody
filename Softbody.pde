
int screen = 800;
Particle p1 = new Particle(100, 100);
Particle p2 = new Particle(300, 100);
Particle p3 = new Particle(250, 300);
Particle p4 = new Particle(300, 500);
Particle p5 = new Particle(100, 500);
Particle p6 = new Particle(150, 300);

Spring s1 = new Spring(p1, p2, 0.2);
Spring s2 = new Spring(p2, p3, 0.2);
Spring s3 = new Spring(p3, p4, 0.2);
Spring s4 = new Spring(p4, p5, 0.2);
Spring s5 = new Spring(p5, p6, 0.2);
Spring s6 = new Spring(p6, p1, 0.2);
Spring s7 = new Spring(p3, p6, 0.2);
Spring s8 = new Spring(p1, p4, 0.2);
Spring s9 = new Spring(p2, p5, 0.2);
Spring s10 = new Spring(p1, p3, 0.2);
Spring s11 = new Spring(p2, p6, 0.2);
Spring s12 = new Spring(p6, p4, 0.2);
Spring s13 = new Spring(p3, p5, 0.2);


Particle[] p = new Particle[]{p1, p2, p3, p4, p5, p6};
Spring[] s = new Spring[]{s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13};

void settings() {
  width = screen;
  height = screen;
}


void setup(){
  //p1.lock();
}

void draw() {
  background(255);
  for (Spring sp : s) {
    sp.update();
    sp.show();
  }

}
