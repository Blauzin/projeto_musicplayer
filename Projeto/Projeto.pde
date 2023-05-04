void setup(){
  size(1000,730);
  background(#1C1C1C);
  surface.setAlwaysOnTop(true);
}

public void draw(){
  layout(0, 630, 1000, 100);
  botaoPlay(width/2,680,50);
  botaoUn(380, 680, 35);
  botaoRe(420, 680, 35);
}

void layout(int posx, int posy, int scaleX, int scaleY){
  fill(#484747);
  rect(posx, posy, scaleX, scaleY);
}
