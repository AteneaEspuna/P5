class Narval{
  PImage imgNarval;
  int    NarvalID;
  int    Velocidad;
  float  PosicionX;
  float  PosicionY;
  float  Largo;
  float  Ancho;
  float  Angulo;
  float  AnguloMax;
  float  AnguloMin;
  boolean Sube;
  boolean Derecha;


  Narval(){
    NarvalID = 0;
    Velocidad = 2;
    PosicionX = 0;
    PosicionY = height/2;
    Sube = false;
    Derecha = true;

    CambiarNarval();
  }

  void CambiarNarval() {
    switch(NarvalID){
      case 0:
        imgNarval = loadImage("N1D.png");
        Largo = 1642;
        Ancho = 1019;
        Angulo = 0;
        AnguloMax = 0;
        AnguloMin = -10;
        break;
      case 1:
        imgNarval = loadImage("N2D.png");
        Largo = 1704;
        Ancho = 863;
        Angulo = 0;
        AnguloMax = 0;
        AnguloMin = -10;
        break;
      case 2:
        imgNarval = loadImage("N3D.png");
        Largo = 1404;
        Ancho = 1207;
        Angulo = 0;
        AnguloMax = 0;
        AnguloMin = -10;
        break;
      case 3:
        imgNarval = loadImage("N4D.png");
        Largo = 1699;
        Ancho = 1381;
        Angulo = 0;
        AnguloMax = 0;
        AnguloMin = -10;
        break;
      default:
    }
  }

  void CambiarDireccion(){
    switch(NarvalID){
      case 0:
        if(Derecha){
          imgNarval = loadImage("N1D.png");
        } else{
          imgNarval = loadImage("N1I.png");
        }
        break;
      case 1:
        if(Derecha){
          imgNarval = loadImage("N2D.png");
        } else{
          imgNarval = loadImage("N2I.png");
        }
        break;
      case 2:
        if(Derecha){
          imgNarval = loadImage("N3D.png");
        } else{
          imgNarval = loadImage("N3I.png");
        }
        break;
      case 3:
        if(Derecha){
          imgNarval = loadImage("N4D.png");
        } else{
          imgNarval = loadImage("N4I.png");
        }
        break;
      default:
    }
  }

  void setX(String Direccion){
    if( Direccion.equals("Der") ){
      PosicionX+=Velocidad;
    } else{
      if( Direccion.equals("Izq") ){
        PosicionX-=Velocidad;
      }
    }
  }//setX

  void setY(String Direccion){
    if( Direccion.equals("Ar") ){
      PosicionY-=Velocidad;
    } else{
      if( Direccion.equals("Ab") ){
        PosicionY+=Velocidad;
      }
    }

  }//setY

  void setDerecha(boolean derecha){
    if(Derecha != derecha){
      Derecha = derecha;
      CambiarDireccion();
    }

  }//setDerecha

  void DibujarNarval(){

    pushMatrix();
    translate(PosicionX, PosicionY);
    //translate(width/2, height/2);
    rotate( radians(Angulo) );
    //image(imgNarval, 0, 0, Largo/6, Ancho/6);
    image(imgNarval, -(Largo/6)/2, -(Ancho/6)/2, Largo/6, Ancho/6);
    popMatrix();

    if (Sube){
      if(Angulo <= AnguloMax){
        Angulo++;
      }else{
        Sube = false;
      }
    }else{
      if(Angulo >= AnguloMin){
        Angulo--;
      }else{
        Sube = true;
      }
    }

  }//DibujarNarval

}//Narval
