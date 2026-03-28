//Grilla con rgb randomizado
int column = 10;
int filas = 10;
int cant = 10;
void setup() {
  size(800, 600);
}

void draw() {
  float sepX = width / cant;
  float sepY = height/ cant;

  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      float x = i * sepX;
      float y = j * sepY;
      noStroke();
      rect(x, y, width, height);
      fill(random(255),random(255),random(255));
    }
  }
}
