void pantallacondicion(int texto, int numero){
    image(escenas[numero], 0, 0);
    cuadrogrande(width/2, 80, 500, 150, 0, 0, 0, 155);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(15);
    text(textos[texto], width/2, 80);
    dibujoboton(50,550,60, 255, 0, 184, 79, 255, 0);
    botonp(50,550,60);
    dibujoboton(100,300,60, 247, 255, 0, 255, 168, 0); //derecha
    botonp(100,300,60);
    dibujoboton(500,300,60, 247, 255, 0, 255, 168, 0); //izquierda
    botonp(500,300,60);
    }
  
void pantallanormal(int texto, int numero){
    noStroke();
    image(escenas[numero], 0, 0);
    cuadrogrande(width/2, 80, 500, 150, 0, 0, 0, 155);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(15);
    text(textos[texto], width/2, 80);
    dibujoboton(550, 550, 60, 255, 0, 184, 79, 255, 0);
    botonp(550, 550, 60);
    dibujoboton(50,550,60, 255, 0, 184, 79, 255, 0);
    botonp(50,550,60);
    }
 
void guia(String indica, int x, int y){
fill(0);
textSize(20);
textAlign(CORNER);
text(indica, x, y);
}

void cuadrogrande(int x, int y, int ancho, int alto, int r, int g, int b, int transparencia) {
  rectMode(CENTER);
  fill(r, g, b, transparencia);
  rect(x, y, ancho, alto, 20);
}

boolean botoniniciop(int x, int y, int ancho, int alto) {
  boolean valor;
  if (mouseX>x-ancho && mouseY<x+ancho && mouseY>y-alto && mouseY<y+alto) {
    valor = true;
  } else {
    valor = false;
  }
  return valor;
}

void dibujobotoninicio(int x, int y, int ancho, int alto, int transparencia) {
  float distancia = dist(mouseX, mouseY, x, y);
  noStroke();
  if (distancia<ancho && distancia<alto) {
    fill(255, 255, 255, transparencia);
  } else {
    fill(155, 250, 176, transparencia);
  }
  rectMode(CENTER);
  rect(x, y, ancho, alto, 60);
}


void dibujoboton(int x, int y, int radio, int r1, int r11, int r12, int r2, int r21, int r22) {
  float distancia = dist(mouseX, mouseY, x, y);
  if (distancia<radio/2 && distancia<radio/2) {
    fill(r2, r21, r22);
  } else {
    fill(r1, r11, r12);
  }
  rectMode(CENTER);
  circle(x,y,radio);
}

  
boolean botonp(float x, float y, float radio ) {
  boolean valor;
  float distancia = dist(mouseX,mouseY,x,y);
  float rad = radio/2;
  if ( distancia < rad) {
    valor = true;
  } else {
    valor = false;
  }
  return valor;
}
