

class Particle {
  
  float x, y, r, m, vx, vy, ax, ay;
  boolean locked;
  
  
  public Particle(float x, float y) {
    this.x = x;
    this.y = y;
    this.r = 20;
    this.m = this.r / 5;
    
    this.vx = 0;
    this.vy = 0;
    
    this.locked = false;
    
    
  }
  
  public void show() {
    stroke(0);
    fill(0);
    circle(this.x, this.y, this.r);
  
  }
  
  public void reflect() {
    if (this.x <= this.r) {
      this.x = this.r;
      this.vx *= -0.9;
    }
    if (this.x >= width - this.r) {
      this.x = width - this.r;
      this.vx *= -0.9;
    }
    if (this.y <= this.r ) {
      this.y = this.r;
      this.vy *= -0.9;
    }
    
    if (this.y >= height - this.r ) {
      this.y = height - this.r;
      this.vy *= -0.9;
    }
    
  }
  
  public void update() {
    if (!this.locked) {
      
      this.reflect();
      
      this.x += vx;
      this.y += vy;
    }
  }
  
  public void addForce(float xC, float yC) {
    this.vx += xC / this.m;
    this.vy += yC / this.m;
    
  }
  
  public void lock() {
    this.locked = true;
    
  }
  
  
  
}
