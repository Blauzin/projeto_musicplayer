int value = 0;
color rectColor = color(27, 35, 242);
float dPlay, dUn, dRe;
int pressTime = -1;

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
    fill(rectColor);
    rect(width / 2, height / 2 , 220, 220);
    
    //seção mouse
    dPlay = dist(mouseX, mouseY, width / 2, 680); // distancia do mouse até o centro do play
    dUn = dist(mouseX, mouseY, 420, 680); // botaoUN
    dRe = dist(mouseX, mouseY, 580 , 680); // botaoRe
    
    if (pressTime >= 0 && millis() - pressTime > 600) {
    rectColor = (#1B23F2); // mudar cor para azul
    pressTime = -1; // reset pressTime
  }
  
}
//verficação click do mouse
void mousePressed() {
  if (dPlay <= 25) {
    rectColor = (#F2831B); //cor laranja
    //colocar aqui dentro o que for mudar no botão
    
    pressTime = millis();
  }
  if (dUn <= 17.5){
    rectColor = (#F2831B); 
    pressTime = millis();
  }
  if (dRe <= 17.5){
    rectColor = (#F2831B); 
    pressTime = millis();
  }
  
}
