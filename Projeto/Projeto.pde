
color buttonColorplay, buttonColorRe, buttonColorUn; //cores dos botôes
float dPlay, dUn, dRe; //valores das distâncias entre o mouse e os botões
int pressTime = -1; //flag do mouseclick

void setup(){
    size(1000,730);
    background(#1C1C1C); //cor de fundo
    surface.setAlwaysOnTop(true);  
    buttonColorplay = buttonColorRe = buttonColorUn = (#FFFFFF); //define a cor do botâo como branco
  }
  
  void draw(){
    layout(0, 630, 1000, 100);
    botaoPlay(width/2,680,50, buttonColorplay);
    botaoUn(380, 680, 35, buttonColorRe);
    botaoRe(420, 680, 35, buttonColorUn);
    
    
    //seção mouse
    dPlay = dist(mouseX, mouseY, width / 2, 680); // distancia do mouse até o centro do play
    dUn = dist(mouseX, mouseY, 420, 680); // botaoUN
    dRe = dist(mouseX, mouseY, 580 , 680); // botaoRe
    
    //se a flag for ativada e se a a diferença for maior que 300ms (ou seja, delay de 300ms) o botâo volta a ser branco e a flag é desativada.
    if (pressTime >= 0 && millis() - pressTime > 300) {
    buttonColorRe = (#FFFFFF);
    buttonColorUn = (#FFFFFF);
    buttonColorplay = (#FFFFFF);
    pressTime = -1; // reseta o pressTime, 
  }
  
}
//verficação click do mouse
void mousePressed() {
  if (dPlay <= 25) {
    buttonColorplay = (#C4C2C2); //muda a cor do botâo para cinza escuro
    //colocar aqui dentro o que o botão for fazer 
    
    pressTime = millis();
  }
  if (dUn <= 17.5){
    buttonColorUn = (#C4C2C2); 
    pressTime = millis();
     //colocar aqui dentro o que o botão for fazer
    
  }
  if (dRe <= 17.5){
    buttonColorRe = (#C4C2C2); 
    pressTime = millis();
    //colocar aqui dentro o que o botão for fazer
    
  }
  
}
