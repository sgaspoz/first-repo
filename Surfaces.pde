float ratio = bSH/boxXZ;
void drawBottomSurface(){
  bottomSurface.beginDraw();
  bottomSurface.background(#EBF0BF);
  bottomSurface.endDraw();
  
}

void drawTopView(){
  topView.beginDraw();
  topView.background(#5390D8);
  
  pushMatrix();
  topView.fill(255, 0, 0);
  topView.scale(ratio);
  topView.ellipse(boxXZ/2+mover.location.x, boxXZ/2+mover.location.z, 2*radius, 2*radius);
  
  
  for(int i = 0; i< obst.size(); ++i){
    pushMatrix();
    topView.fill(200);
    topView.ellipse(boxXZ/2+obst.get(i).x, boxXZ/2+obst.get(i).y, 2*cylinderBaseSize , 2*cylinderBaseSize);
    popMatrix();
  }
  
  popMatrix();
  
  topView.endDraw();
}

int posX(int x){
  return x/800*80;
}