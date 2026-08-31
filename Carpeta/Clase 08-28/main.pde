ArrayList <Cuadrado> tubos;
Pelota bird; 
float UltimoPar = 0;
PVector G = new PVector(0, 0.5); 
void setup(){
  size(800, 600);
  tubos = new ArrayList <Cuadrado>();
  bird = new Pelota(100, height/2); 
}

void draw(){
  background(0);
  agregartubos();
  bird.addFuerza(G);
  bird.mover();
  bird.rebotar();
  borrartubos();

  for(Cuadrado t: tubos){
    t.mover();
    t.mostrar();
  }
  bird.mostrar();
}
      
