
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

void botaoPlay(int posx, int posy, int scale){
  fill(#FFFFFF);
  circle(posx, posy, scale);
  fill(#000000);
  triangle(posx + 15,posy,posx - 10,posy - 15,posx - 10,posy + 15);
}
//void botao(int posx, int posy, int scale){
  //fill(#FFFFFF);
  //circle(posx, posy, scale);
  //fill(#000000);
  //triangle(posx -8,posy,posx + 8,posy - 10,posx + 8,posy + 10);
  //rect(posx - 12,posy - 10, 5,20);
//} 
