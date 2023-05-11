import processing.video.*;
Movie video;

void setupVideo(){
  video = new Movie(this,"LadyGaga.mp4");
  //video.resize(320,240);
  video.play();
  //video2 = new Movie(this,"LadyGaga.mp4");
} 
void drawVideo(){
  //video.resize(320,240);
  image(video, 0,0);
}

void movieEvent(Movie m){
  m.read();
}
