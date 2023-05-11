import processing.video.*;

Movie video;
int resizedWidth = 1000;
int resizedHeight = 563;
boolean isPlaying = true;
float ballX;

void setupVideo(){
  video = new Movie(this, "LadyGaga.mp4");
  video = new Movie(this, "matheus.mp4");
  video = new Movie(this, "cupid.mp4");
  video = new Movie(this, "mato.mp4");
  video = new Movie(this, "katy.mp4");
  video = new Movie(this, "justin.mp4");
}

void drawVideo(){
  
    background(#171717); // Clear the background
    
    // Draw video
    image(video, 0, 50, resizedWidth, resizedHeight);
    
    // Draw progress bar
    float progressBarWidth = (float)video.time() / (float)video.duration() * resizedWidth; 
    noStroke();
    fill(255, 0, 0); // cor vermelha pra barra
    rect(0, resizedHeight + 50 , progressBarWidth, 10);
    
    // Draw ball at the end of the progress bar
    float ballX = progressBarWidth;
    fill(255); // White color for the ball
    ellipse(ballX, resizedHeight + 55, 16, 16);
    
    int exitButtonSize = 30;
    int exitButtonX = 10;
    int exitButtonY = 10;
    botaoExit(exitButtonX, exitButtonY, exitButtonSize, #FF0000);
  
  
}
void openVideoPlayer(String videoFilename) {
  isVideoPlayerOpen = true;

  // Load the video
  video = new Movie(this, videoFilename);
  video.play();
}




void movieEvent(Movie m){
  m.read();
}

void keyPressed(){
  if (key == ' '){ // Spacebar to toggle play/pause
    if (isPlaying){
      video.pause();
    } else {
      video.play();
    }
    isPlaying = !isPlaying;
  }  if (keyCode == RIGHT){ // Right arrow to forward by 5 seconds
    video.jump(video.time() + 5);
  }  if (keyCode == LEFT){ // Left arrow to backward by 5 seconds
    float newTime = video.time() - 5;
    if (newTime < 0) {
      newTime = 0;
    }
    video.jump(newTime);
    movieEvent(video); // Manually call movieEvent to update the progress bar
  }
}
