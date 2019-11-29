

void keyPressed(){

  if(key == CODED){
    if(keyCode == UP){
      narval.setY("Ar");
    }//UP
    else{
      if(keyCode == DOWN) {
        narval.setY("Ab");
      }//DOWN
      else{
        if(keyCode == LEFT) {
          narval.setX("Izq");
          narval.setDerecha(false);
        }//LEFT
        else{
          if(keyCode == RIGHT) {
            narval.setX("Der");
            narval.setDerecha(true);
          }//RIGHT
        }//RIGHT
      }//LEFT
    }//DOWN
  }

  if(key == 'p'){
    escenario.portal.PortalID++;
    if(escenario.portal.PortalID > 5) escenario.portal.PortalID = 1;
    escenario.portal.imgPortal = loadImage("P"+str(escenario.portal.PortalID)+".png");
  }

}
