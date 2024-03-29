
int screen = 800;
Particle p1 = new Particle(100, 100);
Particle p2 = new Particle(300, 100);
Particle p3 = new Particle(250, 300);
Particle p4 = new Particle(300, 500);
Particle p5 = new Particle(100, 500);
Particle p6 = new Particle(150, 300);

Spring s1 = new Spring(p1, p2, 0.9);
Spring s2 = new Spring(p2, p3, 0.9);
Spring s3 = new Spring(p3, p4, 0.9);
Spring s4 = new Spring(p4, p5, 0.9);
Spring s5 = new Spring(p5, p6, 0.9);
Spring s6 = new Spring(p6, p1, 0.9);
Spring s7 = new Spring(p3, p6, 0.9);
Spring s8 = new Spring(p1, p4, 0.9);
Spring s9 = new Spring(p2, p5, 0.9);
Spring s10 = new Spring(p1, p3, 0.9);
Spring s11 = new Spring(p2, p6, 0.9);
Spring s12 = new Spring(p6, p4, 0.9);
Spring s13 = new Spring(p3, p5, 0.9);


Particle[] p = new Particle[]{p1, p2, p3, p4, p5, p6};
Spring[] s = new Spring[]{s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13};

Body b = new Body(p, s);


Particle pt1 = new Particle(400, 100);
Particle pt2 = new Particle(400, 200);
Particle pt3 = new Particle(400, 300);
Particle pt4 = new Particle(400, 400);

Spring sp1 = new Spring(pt1, pt2, 0.2);
Spring sp2 = new Spring(pt2, pt3, 0.2);
Spring sp3 = new Spring(pt3, pt4, 0.2);
//Spring sp4 = new Spring(pt4, pt1, 0.2);


Particle[] peez = new Particle[]{pt1, pt2, pt3, pt4};
Spring[] sping = new Spring[]{sp1, sp2, sp3};

Body string = new Body(peez, sping);


Particle v1 = new Particle(200, 200);
Particle v2 = new Particle(400, 200);
Particle v3 = new Particle(300, 400);

Spring tri1 = new Spring(v1, v2, 0.2);
Spring tri2 = new Spring(v2, v3, 0.2);
Spring tri3 = new Spring(v3, v1, 0.2);

Particle[] tps = new Particle[]{v1, v2, v3};
Spring[] tsp = new Spring[]{tri1, tri2, tri3};

Body tri = new Body(tps, tsp);


void settings() {
  width = screen;
  height = screen;
}


void setup(){
  //tri.p[0].lock();
  //tri.p[1].lock();
  tri.setK(2);
  tri.setDampening(0.01);
  
  //string.p[0].lock();
  //string.applyGravity(10);
  //string.setK(0.5);
  //string.setDampening(0.9);
  
  
  //b.applyGravity(10);
  //b.setK(0.01); //For whatever reason k-values over 0.5 go insane, I honestly recommend a k of 0.01 or below
  //b.setDampening(0.7);
}

void draw() {
  background(255);
  
  tri.drag(mouseX, mouseY);
  tri.applyGravity(0.2);
  tri.update();
  tri.show();
  
  //string.drag(mouseX, mouseY);
  //string.applyGravity(10);
  //string.update();
  //string.show();
  
  
  //b.drag(mouseX, mouseY);  //Only recommend on low k-value for whatever reason (low as in <0.05)
  //b.applyGravity(1);
  //b.update();
  //b.show();
}
