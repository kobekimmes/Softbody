

class Particle {
  
  float x, y, r;
  
  
  public Particle(float x, float y) {
    this.x = x;
    this.y = y;
    this.r = 20;
    
  }
  
  public void show() {
    stroke(0);
    fill(0);
    circle(this.x, this.y, this.r);
  
  }
  
  
  
}
