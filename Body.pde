
class Body {

  Particle[] p;
  Spring[] s;


  public Body(Particle[] p, Spring[] s) {

    this.s = s;
    this.p = p;
  }

  public void update() {
    for (Spring sp : this.s) {
      sp.update();
      sp.show();
    }
  }
  
  public void applyGravity() {
    for (Particle pt : this.p) {
      pt.addForce(0, 10);
    }
  }
  
  public void lockBody() {
     for (Particle pt : this.p) {
      pt.lock();
    }
    
  }
  
  public void setK(float k) {
    for (Spring sp : this.s) {
      sp.k = k;
    }
  }
  
  public void setDampening(float d) {
    for (Spring sp : this.s) {
      sp.dampening = d;
    }
  }
}
