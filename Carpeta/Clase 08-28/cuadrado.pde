class Cuadrado { 
  PVector pos;
  float ancho;
  float alto;
  float velocidadX = -3; 

  Cuadrado(float x, float y, float w, float h) {
    pos = new PVector(x, y);
    ancho = w;
    alto = h;
  }

  void mover() {
    pos.x += velocidadX;
  }

  void mostrar() {
    fill(0, 255, 0); 
    rect(pos.x, pos.y, ancho, alto);
  }
}
