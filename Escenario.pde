class Escenario{
  PImage imgEscenario;
  float  EscenarioX;
  float  EscenarioY;
  int    Nivel;

  Portal portal;

  Escenario(){
    imgEscenario = loadImage("E1.jpg");
    EscenarioX = 0;
    EscenarioY = 0;
    Nivel = 1;

    portal = new Portal();
  }

  void SeleccionarNivel(){
    switch(Nivel){
      case 1:
        imgEscenario = loadImage("E1.jpg");
        break;
      case 2:
        imgEscenario = loadImage("E2.jpg");
        break;
      case 3:
        imgEscenario = loadImage("E3.jpg");
        break;
      case 4:
        imgEscenario = loadImage("E4.jpg");
        break;
      default:
    }
  }
  

  void DibujarEscenario(){

   
    
    image(imgEscenario, EscenarioX, EscenarioY, width*2, height);
   
    if( -EscenarioX < width ){
      EscenarioX-=1;
    }
    else{
      EscenarioX = 0;
      Nivel++;
      SeleccionarNivel();
    }

    portal.DibujarPortal();

  }//DibujarEscenario



}//Escenario
