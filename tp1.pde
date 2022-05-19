/*TP#1: Animacion con codigo
 Alumna:Fernandez Yesica (92597/9)
 pelicula: tenki no ko 
 
 */
 

PImage titulo;
PImage image2;
PImage image3;
PImage image4;
PImage image5;
PImage fin;


int counter;
int pantalla = 1;

PFont letra;

int posY = 0;


String direccion;
String prod1;
String prod2;
String prod3;
String prod4;
String guion;
String musica;
String anima1;
String anima2;
String cn;
String uno;
String dos;
String tres;
String cuatro;
String cinco;


void setup(){
  size(500,300);
   textSize(30);
   titulo = loadImage("titulo.png");
   letra = loadFont("BellMT-48.vlw");
 
   image(titulo, 0, 0);
  counter = 1;
 
    image2 = loadImage("flores" + counter + ".png");
       image3 = loadImage("esc11.png");
    image4 = loadImage("es15.png");
      image5 = loadImage("estudio.png");
          fin = loadImage("fin.png");

}

void draw(){
  

 
direccion= "Makoto Shinkai";
prod1="Noritaka Kawaguchi";
prod2="Minami Ichikawa";
prod3="Genki Kawamura";
prod4="Yoshihiro Furusawa";
guion="GUION: Makoto Shinkai";
musica="MUSICA:John Williams";
anima1="Atsushi Tamura";
anima2="Masayoshi Tanaka";
cn="Ryôsuke Tsuda";
uno= "hina amano---Nana Mori";
dos ="Hodaka Morishima---Kotaro Daigo";
tres = "Keisuke Suga--Shun Oguri";
cuatro="Natsumi Suga---Tsubasa Honda";
cinco="Nagisa Amano---Sakura Kiryu";


  
  background(200);
 if (pantalla == 1) {
  image(titulo, 0, 0);
     fill(#48AADE);
   rect(230, 240,  40, 20,10);
    
    if (dist(mouseX, mouseY, 230, 240) < 25) {
      cursor(HAND);
    }else{
      cursor(ARROW);
      
    } } else if (pantalla == 2) {
      
 background (0);
 fill(255);
   textFont(letra, 20);
  text ("PERSONAJES",250,posY+300);
  text(uno,250,posY+330);
  text(dos,200,posY+360);
 text(tres,250,posY+390);
   text(cuatro,220,posY+420);
 text(cinco,220,posY+450);

image(image2, 20,posY+300,180,150);
   creditos1(); 
  
   text ("DIRECCION:",25,posY+750); 
   text(direccion,25,posY+780);
   text("PRODUCCION:",25,posY+810);
   text(prod1,25,posY+840);
   text(prod2,25,posY+870);
      text(prod3,25,posY+900);
   text(prod4,25,posY+930);
    
      image(image3, 230,posY+750,250,150);  
     
      text(guion,250,posY+1230);
       text(musica,250,posY+1260);
      text("ANIMADORES:",250,posY+1290);
       text(anima1,250,posY+1320);
       text(anima2,250,posY+1350);
      text("CINEMATOGRAFIA POR :",250,posY+1380);
      text(cn,250,posY+1410);

  image(image4, 20,posY+1230,200,150);
 
 image(image5, 0,posY+1710, width, height);
   
    textFont(letra, 50);
 text("FIN.",200,posY+2500);
image(fin, 165,posY+2350, 150, 100);

  posY++; 
  println(posY);
  
  posY=posY-4;
}
}
   
   void mouseClicked() {
  if (pantalla == 1) {
    if (dist(mouseX, mouseY, 230, 240) < 25) {
      pantalla++;}
  } else if (pantalla == 2) {
   
  } 
}



        
