

class Particle {
  
  float x, y, r, m, vx, vy, ax, ay;
  boolean locked
  
  
  public Particle(float x, float y) {
    this.x = x;
    this.y = y;
    this.r = 20;
    this.m = this.r / 5;
    
    this.vx = 0;
    this.vy = 0;
    
    this.ax = 0;
    this.ay = 0;
    
    
    
  }
  
  public void show() {
    stroke(0);
    fill(0);
    circle(this.x, this.y, this.r);
  
  }
  
  public void reflect() {
    if (this.x < this.r || this.x > width - this.r) {
      this.vx *= -1;
    }
    if (this.y < this.r || this.y > height - this.r) {
      this.vy *= -1;
    }
    
  }
  
  public void update() {
    if (!this.locked) {
      
      this.reflect();
      this.vx += this.ax;
      this.vy += this.ay;
      
      this.x += vx;
      this.y += vy;
    }
  }
  
  
  
}
