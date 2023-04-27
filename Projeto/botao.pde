void botaoUn(int posx, int posy, int scale){
  noStroke();
  fill(#FFFFFF);
  circle(posx + 200, posy, scale);
  fill(#000000);
  triangle(posx + 205,posy,posx + 190,posy - 10,posx + 190,posy + 10);
  rect(posx + 205, posy - 10, 5, 20);
}

void botaoRe(int posx, int posy, int scale){
  noStroke();
  fill(#FFFFFF);
  circle(posx, posy, scale);
  fill(#000000);
  triangle(posx -8,posy,posx + 8,posy - 10,posx + 8,posy + 10);
  rect(posx - 12,posy - 10, 5,20); 
}
