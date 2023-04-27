void setup(){
  size(1000,730);
  background(0);
  surface.setAlwaysOnTop(true);
}

void draw(){
  layout();
  botaoPlay(50,50);
}

void layout(){
  fill(#484747);
  rect(width/2 - 500, 630, 1000, 100);
}

void botaoPlay(int x, int y){
  fill(#FFFFFF);
  circle(50, 50, 40);
}
