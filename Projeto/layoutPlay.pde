//Pedro fez isso aqui
void layout(int posx, int posy, int scaleX, int scaleY){
  rectMode(CENTER);
  fill(#3B3B3B);
  rect(posx, posy, scaleX, scaleY, 25);
  rectMode(CORNER);
}
void botaoUn(int posx, int posy, int scale, color cordefundo){
  noStroke();
  fill(cordefundo);
  circle(posx + 200, posy, scale);
  fill(#000000);
  triangle(posx + 205,posy,posx + 190,posy - 10,posx + 190,posy + 10);
  rect(posx + 205, posy - 10, 5, 20);
}

void botaoRe(int posx, int posy, int scale, color cordefundo){
  noStroke();
  fill(cordefundo);
  circle(posx, posy, scale);
  fill(#000000);
  triangle(posx -8,posy,posx + 8,posy - 10,posx + 8,posy + 10);
  rect(posx - 12,posy - 10, 5,20); 
}
void botaoPlay(int posx, int posy, int scale, color cordefundo) {
  fill(cordefundo);
  circle(posx, posy, scale);
  fill(#000000);
  if (isPlaying) {
    // Pause symbol
    rect(posx - 9, posy - 12, 6, 24);
    rect(posx + 3, posy - 12, 6, 24);
  } else {
    // Sideways arrowhead symbol
    triangle(posx - 10, posy - 15, posx + 15, posy, posx - 10, posy + 15);
  }
}


//Matheus fez isso
 void botaoExit(int posx, int posy, int scale) {
  noStroke();
  fill(#3B3B3B);
  rect(posx, posy + 4, scale, scale, 10);
  fill(#FFFFFF); // branco pro x

  textSize(scale * 1); // Aumentar scale 
  textAlign(CENTER, CENTER);
  text("X", posx + scale / 2, posy + scale / 2);
}
