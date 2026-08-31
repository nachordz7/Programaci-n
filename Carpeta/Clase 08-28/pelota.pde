class Pelota { 
  PVector pos;
  PVector vel;
  float r = 20; 
  color c = color(255); 
  int estado = 0 ;

  Pelota(float x, float y){ 
    pos = new PVector(x, y);
    vel = new PVector(0, 0); 
  }

  void addFuerza(PVector fuerza){ 
    vel.add(fuerza);
  }

  void mover(){
    pos.add(vel);
    vel.limit(10); 
  }
  void mostrar(){
    fill(c);
    circle(pos.x, pos.y, r * 2); 
  }

  void rebotar(){
    if(pos.y > height - r){
       pos.y = height - r;
       vel.y = vel.y * -0.5; 
    }
    if(pos.y < r){
       pos.y = r;
       vel.y = vel.y * -0.5;
    }
  }
}
void keyPressed() {

  if (estado ==1) {
    inicializarTodo();
    setup();
  }

  if (dx==0) {
    if (key == 'd' || key == 'D' || keyCode == RIGHT) {
      dx=1;
      dy=0;
    }

    if (key == 'a' || key == 'A'|| keyCode == LEFT) {
      dx=-1;
      dy=0;
    }
  }

  if (dy==0) {
    if (key == 'w' || key == 'W'|| keyCode == UP) {
      dx=0;
      dy=-1;
    }
    if (key == 's' || key == 'S'|| keyCode == DOWN) {
      dx=0;
      dy=1;
    }
  }
}
