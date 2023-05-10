PImage musicas ,musica2 , musica3 , musica4 , musica5 , musica6;
int x_image = 85;
int y_image = 50;
void imagensSetup(){
  musicas = loadImage("poker.jpeg");
  musicas.resize(280 , 0);
  musica2 = loadImage("katy.jpeg");
  musica2.resize(280 , 280);
  musica3 = loadImage("mato.jpeg");
  musica3.resize(280 , 280);
  musica4 = loadImage("cupid.jpeg");
  musica4.resize(280 , 0); 
  musica5 = loadImage("justin.jpeg");
  musica5.resize(280, 280);
  musica6 = loadImage("matheus.jpeg");
  musica6.resize(280 , 0);
}
void imagens(){
   background(500);
   image(musicas, x_image + 580, y_image);
   image(musica2, x_image + 280, y_image);
   image(musica3, x_image - 20, 50);
   image(musica4, x_image - 20, y_image + 340);
   image(musica5, x_image + 280, y_image + 340);
   image(musica6, x_image + 580, y_image + 340);
}
