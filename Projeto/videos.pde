import processing.video.*;

Movie video;
int resizedWidth = 1000;
int resizedHeight = 563;
boolean isPlaying = true;
float ballX;


//Feito por Matheus e Pedro 
void setupVideo(){
  //carregar os vídeos
  video = new Movie(this, "LadyGaga.mp4");
  video = new Movie(this, "edsheeran.mp4");
  video = new Movie(this, "cupid.mp4");
  video = new Movie(this, "mato.mp4");
  video = new Movie(this, "katy.mp4");
  video = new Movie(this, "justin.mp4");
}

void drawVideo(){
  
    background(#171717); // Cor de fundo 
    
    // Tamanho do video
    image(video, 0, 50, resizedWidth, resizedHeight);
    
    // Desenhar a barra de progresso
    float progressBarWidth = (float)video.time() / (float)video.duration() * resizedWidth;
    //a largura da barra depende da razão entre tempo passado e duração do completa do vídeo
    noStroke();
    fill(255, 0, 0); // cor vermelha pra barra
    rect(0, resizedHeight + 50 , progressBarWidth, 10); //desenhar a barra em si
    
    // Bolinha no final da barra
    float ballX = progressBarWidth;
    fill(255); // Cor da bolinha
    ellipse(ballX, resizedHeight + 55, 16, 16);
    
    // Tamanho do botâo de x e seu draw
    int exitButtonSize = 30;
    int exitButtonX = 10;
    int exitButtonY = 10;
    botaoExit(exitButtonX, exitButtonY, exitButtonSize);
  
  
}
//função para abrir o vídeo
void openVideoPlayer(String videoFilename) {
  isVideoPlayerOpen = true;

  // Carregar o vídeo certo
  video = new Movie(this, videoFilename);
  video.play();
}




void movieEvent(Movie m){
  m.read(); //função obrigatoria da biblioteca
}


//Guilherme fez isso
void keyPressed(){
  if (key == ' '){ // Espaço para pausar o vídeo 
    if (isPlaying){
      video.pause();
    } else {
      video.play();
    }
    isPlaying = !isPlaying;
  }  if (keyCode == RIGHT){ // Seta para direita para passar o vídeo em 5 segundos
    video.jump(video.time() + 5);
  }  if (keyCode == LEFT){ // Seta para esquerda para voltar o vídeo em 5 segundos
    float newTime = video.time() - 5;
    if (newTime < 0) {
      newTime = 0;
    }
    video.jump(newTime);
    movieEvent(video); // Atualizar a barra de progresso
  }
}
