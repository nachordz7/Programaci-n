
int radio = 0 ;
void setup() {
  size(800, 800);
}

void draw() {
  if (mousePressed) {
    radio++;
    reCuadritos( mouseX, mouseY, radio, radio);
  }
}

void mouseReleased() {
  radio = 0 ;
}

void reCuadritos(float x, float y, float w, float h) {
  rectMode(RADIUS);
  strokeWeight(2);
  fill(255, 30);
  rect(x, y, w/2, h/2);
  noFill();
  rect(x, y, w/4, h/4);
  rect(x, y, w/8, h/8);
  rect(x, y, w/16, h/16);
  rect(x, y, w/32, h/32);
  rect(x, y, w/64, h/64);
}
