
class Spring {
  
  Particle a, b;
  float k, l, dampening;
  
  public Spring(Particle a, Particle b, float k) {
    this.a = a;
    this.b = b;
    this.k = k;
    this.l = this.particleDist();
    
    this.dampening = 0.01;
    
  }
  
  public void show() {
    
    stroke(127);
    line(this.a.x, this.a.y, this.b.x, this.b.y);
    this.a.show();
    this.b.show();
    
  }
  
  public float getComponent(boolean x) {
    if (x) {
      return this.a.x - this.b.x;
    }
    else {
      return this.a.y - this.b.y;
    }
  }
  
  public float particleDist() {
    return dist(a.x, a.y, b.x, b.y);
  }
  
  
  public void update() {
    float springForceX = -this.k * (this.particleDist() - this.l) * (this.getComponent(false))/this.particleDist() * this.dampening;
    float springForceY = -this.k * (this.particleDist() - this.l) * (this.getComponent(true))/this.particleDist() * this.dampening;
    this.a.addForce(springForceX, springForceY);
    this.b.addForce(springForceX, springForceY);
    
    this.a.update();
    this.b.update();
    
  }
  
  
}
