//Mariana Mercado
//Legajo 95503/8
//tp1, comision 1

int segundos;
int alto, ancho;
int posy, posy1, posy2, posy3, posy4, posx, posx1, posx2, posx3;
PImage cartagena1, cartagena2, cartagena3;
int posyrect, posyrects, posxrects;
PFont ciudadamurallada, texto, colombia;
float opacidad, opacidad2, opacidad3, opacidad4, opacidad5, opacidad6, opacidad7, opacidad8;
float tama, tama1, tama2;


void setup() {
  size(640, 480);
  textAlign(CENTER);
  cartagena1=loadImage("cartagena1.jpg");
  cartagena2=loadImage("cartagena2.jpg");
  cartagena3=loadImage("cartagena3.jpg");
  ciudadamurallada=loadFont("ciudadamurallada.vlw");
  texto=loadFont("texto.vlw");
  colombia=loadFont("colombia.vlw");
  posyrect = -14;
  posy = 0;
  posy1 = 480;
  posy2 = 480;
  posy3 = 0;
  posy4 = height/2;
  posx = 640;
  posx1 = 640;
  posx2 = 0;
  posx3 = width/3;
  opacidad = 255;
  opacidad2 = 255;
  opacidad3 = 255;
  opacidad4 = 255;
  opacidad5 = 255;
  opacidad6 = 255;
  opacidad7 = 255;
  opacidad8 = 255;
  tama = 20;
  tama1 = 20;
  tama2= 20;
  textSize(20);
  posxrects = 490;
  posyrects = 426;
  ancho = 150;
  alto = 50;
}

void draw () {
  background(255);
  if (frameCount%60==0) { //cronometro
    segundos++;
  }
 
 //INICIO PANTALLA 1
  if(segundos>=0){         
  image(cartagena1, 0, 0);  //Opacidad de imagen
  if(segundos>=2.5){
    tint(170);
  }
  
  // FONDO DE LETRA
  rectMode(CENTER);   
  noStroke();
  fill(0,0,0,100);
  rect(width/2, posyrect, 530, 50);
  if(segundos >=0){                     //Movimiento de fondo de letra
  if(posyrect<height+100){
    posyrect++;
  }
}

if(segundos>=2.5){                     //Cambiar color fondo de letra
    fill(255,255,255,100);
    rect(width/2, posyrect, 530, 50);
  }
  
//LETRA CIUDAD AMURALLADA
  if (segundos>=0) {      //Cambio colores Ciudad amurallada
    fill(255, 255, 0);
  }
  if (segundos>2) {
    fill(0, 0, 255);
  }
  if (segundos>4) {
    fill(255, 0, 0);
  }

  textSize(40);                  //Movimiento texto ciudad amurallada
  textFont(ciudadamurallada);
  text("CIUDAD AMURALLADA", width/2, posy);
  if (posy<height+100) {
    posy++;
  }
  
//LETRA DE PATRIMONIO DE COLOMBIA
    textSize(30);
    textFont(texto);
    fill(0);
    if (segundos>=2){ 
    text("Fue declarada patrimonio cultural \n de Colombia en 1959", posx, height/7); //Movimiento de letra de patrimonio de colombia
    if (posx>width/2){
      posx = posx-2;
    }
    }    
    if(segundos>=2.5){           //Cambio de color patrimonio de colombia
    fill(255);
    text("Fue declarada patrimonio cultural \n de Colombia en 1959", posx, height/7);
    }
  
  
// LETRA DE PATRIMONIO DE UNESCO
  if (segundos>=5) {  //Movimiento de texto patri de unesco
    textSize(30);
    fill(255);
    text("Y como Patrimonio de la \n Humanidad \n en 1984", posx1, 140);
    if (posx1>195) {
      posx1 = posx1-2;
    }
  }
  
  //LETRA DE UBICACION
  if(segundos>=5) {
    textSize(30);
    fill(255);
    text("Está ubicada en la \n ciudad de Cartagena, sobre la \n costa colombiana", posx2, 140);
    if(posx2<450){
    posx2 = posx2+2;
  }
  }

  // SEGUNDA PANTALLA
    if (segundos>=12){
    image(cartagena2, 0,0);
    }
    
//PRIMERA LETRA
if(segundos>=12.5){                            //Movimiento de letra 1
  textSize(30);
  fill(255,255,255,opacidad);
  text("Aquí vivían los nobles y \n las personas importantes en \n la época de la Colonia", 140, posy1);
  if(posy1>60){
    posy1 = posy1-2;
  }
}
   if(segundos>=18){                          //Salida de letra 1
   opacidad=map(segundos, 12.5, 17, 255,0);
    }
 
//SEGUNDA LETRA
if(segundos>=17){                            //Movimiento de letra 2
  textSize(30);
  fill(255,255,255,opacidad2);
  text("Al recorrer el lugar \n podrás encontrar...", 470, posy2);
  if(posy2>90){
    posy2 = posy2-2;
  }
}
   if(segundos>=21){                          //Salida de letra 2
   opacidad2=map(segundos, 17, 21, 255,0);
    }
 
//TERCERA LETRA
if(segundos>=21){                            //Movimiento de letra 3
  textSize(30);
  fill(255,255,255,opacidad3);
  text("Palacio de \n la inquisición", 130, 64);
}
   if(segundos>=22){                          //Salida de letra 3
   opacidad3=map(segundos, 21, 22, 255,0);
    }    
    
//CUARTA LETRA
if(segundos>=22){                            //Movimiento de letra 4
  textSize(30);
  fill(255,255,255,opacidad4);
  text("Museo del oro Zenú \n y Museo de Arte Moderno", 472, 77);
}
   if(segundos>=24){                          //Salida de letra 4
   opacidad4=map(segundos, 22, 24, 255,0);
    }      
    
//QUINTA LETRA
if(segundos>=24){                            //Movimiento de letra 5
  textSize(30);
  fill(255,255,255,opacidad5);
  text("La iglesia y el convento\n de San Pero Claver", 130, 64);
}
   if(segundos>=26){                          //Salida de letra 5
   opacidad5=map(segundos, 24, 26, 255,0);
    }   

//SEXTA LETRA
if(segundos>=26){                            //Movimiento de letra 6
  textSize(30);
  fill(255,255,255,opacidad6);
  text("¡Entre muchos otros \n lugares más!", 472, 77);
}
   if(segundos>=27.5){                          //Salida de letra 6
   opacidad6=map(segundos, 26, 27.5, 255,0);
    }      
 
 //TERCERA PANTALLA 
  if (segundos>=27){
    image(cartagena3,0,0);
  }
 
 if(segundos>=27.5){                            //Movimiento de letra 7
  textSize(25);
  fill(255,255,255,opacidad7);
  text("Tampoco olvides visitar \n las coloridas calles \n y tomarte unas buenas \n fotos de recuerdo", 164, posy3);
  if(posy3<75){
    posy3 = posy3+2;
  }
}
   if(segundos>=33){                          //Salida de letra 7
   opacidad7=map(segundos, 27.5, 33, 255,0);
    }
  
  
  
 if(segundos>=33){                            //Movimiento de letra 8
  textFont(colombia);
  fill(255, 255, 0, opacidad8);
  textSize(tama);
  text("Colombia", width/2, height/2-30);
  if(segundos>=33){
    tama = tama+0.5;
  }
 }
 
  if(segundos>=33){                            //Movimiento de letra 8.1
  textFont(colombia);
  fill(0, 0, 255, opacidad8);
  textSize(tama1);
  text("te", width/2, height/2);
  if(segundos>=33){
    tama1 = tama1+0.5;
  }
 }
 
  if(segundos>=33){                            //Movimiento de letra 8.2
  textFont(colombia);
  fill(255, 0, 0, opacidad8);
  textSize(tama2);
  text("espera", width/2, height/2+30);
  if(segundos>=33){
    tama2 = tama2+0.5;
  }
 }
 
  if(segundos>=36){                            //Salida de todos los textos
  opacidad8 = 0;
  }
  }
   
  
//BOTON
  if (mouseX>415 && mouseX <564 && mouseY>402 && mouseY<449 ) {
    fill(0);
  } else {
    fill(255);
  }
  if(segundos>=37){
  noStroke();
  rect(posxrects, posyrects, ancho, alto);
  textAlign(CENTER);
  textFont(texto);
  textSize(30);
  fill(255);
  text("RETURN", 488, 430);
}   
  println(segundos);
  println(mouseX, mouseY);
}

void mousePressed(){
  if(mouseX>415 && mouseX <564 && mouseY>402 && mouseY<449 ){
  segundos = 0;
  posyrect = -14;
  posy = 0;
  posy1 = 480;
  posy2 = 480;
  posy3 = 0;
  posy4 = height/2;
  posx = 640;
  posx1 = 640;
  posx2 = 0;
  posx3 = width/3;
  opacidad = 255;
  opacidad2 = 255;
  opacidad3 = 255;
  opacidad4 = 255;
  opacidad5 = 255;
  opacidad6 = 255;
  opacidad7 = 255;
  opacidad8 = 255;
  tama = 20;
  tama1 = 20;
  tama2= 20;
  textSize(20);
  posxrects = 490;
  posyrects = 426;
  ancho = 150;
  alto = 50;
  }
}
