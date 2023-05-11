
color buttonColorplay, buttonColorRe, buttonColorUn; //cores dos botôes
float dPlay, dUn, dRe; //valores das distâncias entre o mouse e os botões
int pressTime = -1; //flag do mouseclick
boolean isThumbnailScreenOpen = true; // Flag for thumbnail selection screen
boolean isVideoPlayerOpen = false; // Flag for video player screen

void setup() {
  size(1000, 730);
  background(#1C1C1C); // Background color
  // surface.setAlwaysOnTop(true);
  buttonColorplay = buttonColorRe = buttonColorUn = color(#FFFFFF); // Button colors set to white
  imagensSetup();
  setupVideo();
  video.pause(); // Pause the video initially
}
  
void draw(){
   if (isThumbnailScreenOpen) {
    // Draw the thumbnail selection screen
    imagens();
  } else if (isVideoPlayerOpen) {
    // Draw the video player screen
    drawVideo();
    layout(width/ 2, 680, 270, 70);
    botaoPlay(width/2, 680, 50, buttonColorplay);
    botaoUn(380, 680, 35, buttonColorRe);
    botaoRe(420, 680, 35, buttonColorUn);
  }
    
    
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
  
    if (isThumbnailScreenOpen) {
    // Check if a thumbnail is clicked
    if (mouseX > x_image + 580 && mouseX < x_image + 860 && mouseY > y_image && mouseY < y_image + 280) {
      // Open the video player screen for the corresponding thumbnail
      openVideoPlayer("LadyGaga.mp4"); // Pass the filename of the video to play
      
      // Open the video player screen
      isPlaying = true;
      isThumbnailScreenOpen = false;
      isVideoPlayerOpen = true;
    } else if (mouseX > x_image + 280 && mouseX < x_image + 560 && mouseY > y_image && mouseY < y_image + 280) {
      // Open the video player screen for another thumbnail
      openVideoPlayer("katy.mp4"); // Pass the filename of the video to play
      
      // Open the video player screen
      isPlaying = true;
      isThumbnailScreenOpen = false;
      isVideoPlayerOpen = true;
    } else if (mouseX > x_image - 20 && mouseX < x_image + 260 && mouseY > 50 && mouseY < 330) {
      // Open the video player screen for another thumbnail
      openVideoPlayer("mato.mp4"); // Pass the filename of the video to play
      
      // Open the video player screen
      isPlaying = true;
      isThumbnailScreenOpen = false;
      isVideoPlayerOpen = true;
    } else if (mouseX > x_image - 20 && mouseX < x_image + 260 && mouseY > y_image + 340 && mouseY < y_image + 620) {
      // Open the video player screen for another thumbnail
      openVideoPlayer("cupid.mp4"); // Pass the filename of the video to play
      
      // Open the video player screen
      isPlaying = true;
      isThumbnailScreenOpen = false;
      isVideoPlayerOpen = true;
    } else if (mouseX > x_image + 280 && mouseX < x_image + 560 && mouseY > y_image + 340 && mouseY < y_image + 620) {
      // Open the video player screen for another thumbnail
      openVideoPlayer("justin.mp4"); // Pass the filename of the video to play
      
      // Open the video player screen
      isPlaying = true;
      isThumbnailScreenOpen = false;
      isVideoPlayerOpen = true;
    } else if (mouseX > x_image + 580 && mouseX < x_image + 860 && mouseY > y_image + 340 && mouseY < y_image + 620) {
      // Open the video player screen for another thumbnail
      openVideoPlayer("matheus.mp4"); // Pass the filename of the video to play
      
      // Open the video player screen
      isPlaying = true;
      isThumbnailScreenOpen = false;
      isVideoPlayerOpen = true;
    }
  }
   else if (isVideoPlayerOpen) {
    
    // Check for mouse click on the exit button
    int exitButtonSize = 30;
    int exitButtonX = 10;
    int exitButtonY = 10;
    if (mouseX > exitButtonX && mouseX < exitButtonX + exitButtonSize &&
        mouseY > exitButtonY && mouseY < exitButtonY + exitButtonSize) {
      // Close the video player
      isVideoPlayerOpen = false;
      // Add any additional code to clean up or reset the player state
      isThumbnailScreenOpen = true;
      video.pause();
        }
    
    
    // Handle mouse interaction in the video player screen
    if (dPlay <= 25) {
      buttonColorplay = (#C4C2C2); // Change button color to dark gray
      
      pressTime = millis();
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
        newTime = 0;
      }
      video.jump(newTime);
      movieEvent(video); // Manually call movieEvent to update the progress bar
    }
    if (dRe <= 17.5) {
      buttonColorRe = (#C4C2C2);
      pressTime = millis();
      float newTime = video.time() + 5;
      if (newTime > video.duration()) {
        newTime = video.duration();
      }
      video.jump(newTime);
      movieEvent(video); // Manually call movieEvent to update the progress bar
    } 
  }
}
