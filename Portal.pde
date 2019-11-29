class Portal{
  PImage imgPortal;
  int    PortalID;
  int    Velocidad;
  float  PosicionX;
  float  PosicionY;
  float  Largo;
  float  Ancho;
  float  Angulo;

  Portal(){
    PortalID = 5;
    Velocidad = 3;
    PosicionX = 900;//width/2;//width*2 - 100;
    PosicionY = height/2;
    Largo = 500;
    Ancho = 500;
    Angulo = 0;

    SeleccionarPortal();
  }

  void SeleccionarPortal(){
    switch(PortalID){
      case 1:
        imgPortal = loadImage("P5.png");
        break;
      case 2:
        imgPortal = loadImage("P2.png");
        break;
      case 3:
        imgPortal = loadImage("P3.png");
        break;
      case 4:
        imgPortal = loadImage("P4.png");
        break;
      case 5:
        imgPortal = loadImage("P1.png");
        break;
      default:
    }

  }//SeleccionarPortal

  void DibujarPortal(){
    pushMatrix();
    translate(PosicionX, PosicionY);
    rotate( radians(Angulo) );
    image(imgPortal, -(Largo/2), -(Ancho/2), Largo, Ancho);
    popMatrix();

    Angulo+=Velocidad;

    if(Angulo > 360){
      Angulo = 0;
    }



  }

}
