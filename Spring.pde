
class Spring {
  
  Particle a, b;
  float k, l;
  
  public Spring(Particle a, Particle b, float k, float l) {
    this.a = a;
    this.b = b;
    this.k = k;
    this.l = l;
    
  }
  
  public void show() {
    
    stroke(127);
    line(this.a.x, this.a.y, this.b.x, this.b.y);
    this.a.show();
    this.b.show();
    
  }
  
  
}
