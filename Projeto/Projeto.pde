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
    fill(rectColor)
    rectTest = rect(width / 2, height / 2 , 220, 220);
    
    //seção mouse
    public float dplay = dist(mouseX, mouseY, width / 2, 680); // distancia do mouse até o centro do play
    public float dUn = dist(mouseX, mouseY, 380, 680); // botaoUN
    public float dRe = dist(mouseX, mouseY, 420 , 680); // botaoRe
   
    
}
void mousePressed() {
  if (dplay <= 25) {
     rectColor = (#F0B41B);
  }
}
