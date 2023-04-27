void botaoUn(int posx, int posy, int scale){
  fill(#FFFFFF);
  circle(posx, posy, scale);
  fill(#000000);
  triangle(posx + 205,posy,posx + 190,posy - 10,posx + 190,posy + 10);
}
