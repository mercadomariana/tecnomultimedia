//Mariana Mercado Villabona
//Legajo: 95503/8
//https://youtu.be/f6DesRGKOvQ

PImage efecto;
int alto=25;
int colordiag;
float tam = 25;
float agrandar;
float inicio = 400;
float distan = inicio;
int segundos;
PFont texto;



void setup() {

  size(800, 400);
  background(255);
  efecto = loadImage("efecto.jpg");
  texto=loadFont("letra.vlw");
  tint(220);
  image(efecto, 0, 0);
}

void draw() {
  println(mouseX, mouseY);
  float tamano = map(mouseX, 400, agrandar(50), alto, alto/2);
  todo(17, 100, 400, 0, 400, 0, 45, 45, 390, 55, 125, 90, tamano, 1, 10, colordiag, colordiag);
  image(efecto, 0, 0);
  rectMode(CORNER);
  noStroke();
  fill(255);
  rect(0, 355, 200, 150);
  fill(0);
  textSize(10);
  textFont(texto);
  text("Para interacturar mover el mouse \n y presionar tecla de arriba y abajo", 8, 375);
}



void todo(int diagonales, int lineas, int x1, int y1, int x2, int y2, int distanciay, int distanciax, int xv, int yv, int xh, int yh, float tamano, int grosor, int suma, int stroke, int fill) {

  rectMode(CENTER);
  stroke(stroke);
  fill(fill);
  for (int i = 0; i <= diagonales; i++) {
    strokeWeight(3);
    line(x1, y1+=distanciay, x2+=distanciax, y2);
    for (int j = 0; j <=lineas; j++) {
      rect(xv+=suma, yv-=suma, grosor, tamano);
    }
    yv = 45+(90*i);
    xv = 400;
    for (int k = 0; k <=lineas; k++) {
      fill(0);
      rect(xh+=suma, yh-=suma, tamano, grosor);
    }
    yh = 90+(90*i);
    xh = 400;
  }
}


float agrandar(int frame) {
  float resultado = frame/2;
  return resultado;
}

void keyPressed() {
  if (keyCode==UP) {
    colordiag=color(random(0, 255), random(0, 255), random(0, 255));
  } else if (keyCode==DOWN) {
    colordiag=color(0);
  }
}
