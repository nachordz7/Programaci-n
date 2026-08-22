
PImage img;
void setup() {
  size(800, 600);
  noStroke();
  img  = loadImage("sopa.jpg");
}
void draw() {
  for (int i =0; i<1000; i++) {
    int x = int(random(width));
    int y = int(random(height));
    int t = int(map(mouseY, 0, height, 0, 255));
    int d = int(map(mouseX, 0, width, 0, 30));

    color c = img.get(x, y);
    fill(c, t);a
    ellipse(x, y, d, d);
  }
}
