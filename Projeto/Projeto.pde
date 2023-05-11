
color buttonColorplay, buttonColorRe, buttonColorUn; //cores dos botões variavéis 
float dPlay, dUn, dRe; //valores das distâncias entre o mouse e os botões
int pressTime = -1; //flag para contar tempo do 
boolean isThumbnailScreenOpen = true; // Flag for thumbnail selection screen
boolean isVideoPlayerOpen = false; // Flag for video player screen

void setup() {
  size(1000, 730);
  background(#1C1C1C); // Background color
  // surface.setAlwaysOnTop(true);
  buttonColorplay = buttonColorRe = buttonColorUn = color(#FFFFFF); // Selecionar cor dos botões inicialmente como brancos
  imagensSetup(); //load dos imagens
  setupVideo(); // load dos vídeos
  video.pause(); // Pausa o vídeo inicialmente 
}
  
void draw(){
   if (isThumbnailScreenOpen) {
    // Verifica se a flag está ativa e se estiver carrega a tela 
    imagens();
    
  } else if (isVideoPlayerOpen) {
    // Verifica se a flag está ativa (apenas quando a thumbnail está desativada)
    // Desenha todos os aspectos do layout de player
    drawVideo();
    layout(width/ 2, 680, 270, 70);
    botaoPlay(width/2, 680, 50, buttonColorplay);
    botaoUn(380, 680, 35, buttonColorRe);
    botaoRe(420, 680, 35, buttonColorUn);
    
    //seção mouse
    //calcula a distância do mouse até o centro dos botões do player
    //apenas quando a tela de player está aberto
    dPlay = dist(mouseX, mouseY, width / 2, 680); // distancia do mouse até o centro do play
    dUn = dist(mouseX, mouseY, 420, 680); // botaoUN
    dRe = dist(mouseX, mouseY, 580 , 680); // botaoRe
    
  }
   
    // Timer para quanto tempo os botões mudam de cor quando interagidos com
    
    if (pressTime >= 0 && millis() - pressTime > 300) {
    buttonColorRe = (#FFFFFF);
    buttonColorUn = (#FFFFFF);
    buttonColorplay = (#FFFFFF);
    pressTime = -1; // reseta o pressTime, 
  }
}
//Thiago fez essa parte
// Verficação de clicks do mouse
void mousePressed() {
  
    if (isThumbnailScreenOpen) {
    // Verificação se a tela de thumbnail está aberta
    if (mouseX > x_image + 580 && mouseX < x_image + 860 && mouseY > y_image && mouseY < y_image + 280) {
      // Verificação se a posição do mouse encontra-se dentro dos limites da thumbnail
      openVideoPlayer("LadyGaga.mp4"); // Função do videoPlayer com o nome do vídeo
      
      // Troca as flags necessárias para abrir o player
      isPlaying = true;
      isThumbnailScreenOpen = false;
      isVideoPlayerOpen = true;
    } else if (mouseX > x_image + 280 && mouseX < x_image + 560 && mouseY > y_image && mouseY < y_image + 280) {      // Open the video player screen for another thumbnail
      openVideoPlayer("katy.mp4"); 
      
      isPlaying = true;
      isThumbnailScreenOpen = false;
      isVideoPlayerOpen = true;
    } else if (mouseX > x_image - 20 && mouseX < x_image + 260 && mouseY > 50 && mouseY < 330) {      // Open the video player screen for another thumbnail
      openVideoPlayer("mato.mp4"); 
      
      isPlaying = true;
      isThumbnailScreenOpen = false;
      isVideoPlayerOpen = true;
    } else if (mouseX > x_image - 20 && mouseX < x_image + 260 && mouseY > y_image + 340 && mouseY < y_image + 620) {
      openVideoPlayer("cupid.mp4"); 
      
      isPlaying = true;
      isThumbnailScreenOpen = false;
      isVideoPlayerOpen = true;
    } else if (mouseX > x_image + 280 && mouseX < x_image + 560 && mouseY > y_image + 340 && mouseY < y_image + 620) {
      openVideoPlayer("justin.mp4"); 
      
      isPlaying = true;
      isThumbnailScreenOpen = false;
      isVideoPlayerOpen = true;
    } else if (mouseX > x_image + 580 && mouseX < x_image + 860 && mouseY > y_image + 340 && mouseY < y_image + 620) {
      openVideoPlayer("edsheeran.mp4");
      
      isPlaying = true;
      isThumbnailScreenOpen = false;
      isVideoPlayerOpen = true;
    }
  }
   else if (isVideoPlayerOpen) {
    
    // Tamanho do botão
    int exitButtonSize = 30;
    int exitButtonX = 10;
    int exitButtonY = 10;
    if (mouseX > exitButtonX && mouseX < exitButtonX + exitButtonSize &&
        mouseY > exitButtonY && mouseY < exitButtonY + exitButtonSize) {
         //se clicar no botão x fechar tudo
      isVideoPlayerOpen = false;
      isThumbnailScreenOpen = true;
      video.pause();
        }
    
    
    // Se a distância do botão ao mouse for menor que o raio do botâo 
    if (dPlay <= 25) {
      buttonColorplay = (#C4C2C2); // mudar cor do botão
      
      pressTime = millis();
      //inicializa o delay da cor do botão e pausa o vídeo se tocando ou vice-versa
      if (isPlaying) {
        video.pause();
      } else {
        video.play();
      }
      isPlaying = !isPlaying;
    }
    if (dUn <= 17.5) {
      buttonColorUn = (#C4C2C2);
      pressTime = millis();
      float newTime = video.time() - 5;
      if (newTime < 0) {
        newTime = 0; //verifica se o tempo vai voltar mais que 0 segundos e se sim impede que isso aconteça
      }
      video.jump(newTime); //coloca o vídeo no novo tempo
      movieEvent(video); // Atualizar a barra de progresso de maneira manual para garantir a visualização correta
    }
    if (dRe <= 17.5) {
      buttonColorRe = (#C4C2C2);
      pressTime = millis();
      float newTime = video.time() + 5; 
      if (newTime > video.duration()) {
        newTime = video.duration(); //verifica se o tempo vai passar além da duração do vídeo e se sim impede que isso aconteça
      }
      video.jump(newTime); //coloca o vídeo no novo tempo
      movieEvent(video); // atualiza barra de progresso de maneira manual para garantir a visualização correta
    }
   }
}
