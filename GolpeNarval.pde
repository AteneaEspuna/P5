
Escenario escenario;

Narval narval;



void setup(){
  size(1080,720);

  escenario = new Escenario();
  narval = new Narval();
}

void draw(){
  background(0);
  //image(img, 0, 0);
  //image(img, 0, 0, width/2, height/2);

  escenario.DibujarEscenario();
  narval.DibujarNarval();

}
