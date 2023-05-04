int value = 0;
color rectColor = color(0, 150, 200);

void setup(){
  size(1000,730);
  background(#1C1C1C);
  surface.setAlwaysOnTop(true);
  
}

void draw(){
  fill(value);
  layout(0, 630, 1000, 100);
  botaoPlay(width/2,680,50);
  botaoUn(380, 680, 35);
  botaoRe(420, 680, 35);
  fill(rectColor); // Set the fill color to blue
  rect(width/2, height/2, 100, 100);
}
void mousePressed() {
  if (mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > height/2 - 100 && mouseY < height/2 + 100) {
    rectColor = color(200, 100, 0);
  }
}
