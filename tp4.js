//Nombre: Mariana Mercado
//Legajo: 95503/8
// https://youtu.be/BjzFSR2DU-k

let granja, fuente, start, siguiente, asigno, instrucciones, num, jx, jy, contador, cantgallinas, casillas, atrapagallinas, tiempo, perdiste;
let juancho = [];
let aleatorio = [];
let gallina = [];
let cantjuancho = 6;
let cirgallinas =25;
function preload() {
  for (let i=0; i<cantjuancho; i++) {
    juancho.push(loadImage('data/juancho'+i+'.png'));
  }
  //DISCLAIMER: No utilicé arreglos para cargar estas imagenes para poder saber su nombre y evitar confusiones en el código
  granja = loadImage('data/granja.png');
  start = loadImage('data/start.png');
  presentacion = loadImage('data/presentacion.png');
  siguiente = loadImage('data/siguiente.png');
  instrucciones = loadImage('data/instrucciones.png');
  contador = loadImage('data/contador.png');
  pasto = loadImage('data/pasto.png');
  prueba = loadImage('data/prueba.png');
  imagengallina = loadImage('data/gallina.png');
  fuente = loadFont('data/letra.ttf');
  perdiste = loadImage('data/perdiste.png');
  ganaste = loadImage('data/ganaste.png');
}

function setup() {
  createCanvas(500, 500);
  reset();
}

function draw() {
  //movimiento imagen juanchito
  if (frameCount%18==0) {
    if (num<5) {
      num++;
    } else {
      num=0;
    }
  }
  //pantallas
  if (asigno === 0) {
    imageMode(CENTER);
    image(granja, width/2, height/2);
    botonrec(195, 255, 112, 40);
    start.resize(140, 130);
    image(start, width/2, 280);
  }
  // DISCLAIMER: Profe sé que en la consigna anterior dice que tenía que acomodar el texto en "cajas" pero no cuadraban del todo como lo necesitaba, por eso utilicé de nuevo el \n
  if (asigno===1) {
    image(presentacion, 250, 250);
    textFont(fuente);
    textSize(40);
    fill(255);
    strokeWeight(10);
    text("¡Oh No!", 20, 45, 500);
    noStroke();
    textSize(23);
    text("Al abuelo Balbino se le han perdido sus gallinas.\nAyúdalo a conseguirlas antes de que el Gavilán las atrape.", 20, 75, 500);
    siguiente.resize(55, 55);
    botoncir(450, 155, 60);
    image(siguiente, 450, 155);
  }
  if (asigno===2) {
    image(instrucciones, width/2, height/2);
    textSize(17);
    fill(255);
    text("Muévete con las flechas de tu teclado\npara mover a Juanchito y\natrapar todas las gallinas.\n¡No olvides el tiempo! Pues el Gavilan\na las gallinas matará\ny Balbino triste estará.", width/4, 245, 500);
    fill(0);
    textSize(25);
    text("¡Empezar!", 325, 460);
    siguiente.resize(55, 55);
    botoncir(450, 450, 60);
    image(siguiente, 450, 450);
  }
  if (asigno===3) {
    image(pasto, width/2, height/2);
    image(contador, 250, 250);
    cuenta(tiempo, 360, 48);
    juanchito(num, jx, jy, 31, 75);
    for (let i=0; i<cantgallinas; i++) {
      if (toca(jx, jy, 25, aleatorio[i][0], aleatorio[i][1], cirgallinas)) {
        aleatorio[i][1] = height+cirgallinas;
        atrapagallinas--;
      }
    }
    gallinasrestantes(atrapagallinas, 170, 48);
    imagengallinas();
    mov(jx<width-50/2, jx>0+50/2, jy>100+31/2, jy<height-40);
    //Condicionales de ganar o perder
      if (tiempo === 0) {
      if (atrapagallinas > 0) {
        asigno=4;
      }
    } else if (tiempo > 0) {
      if (atrapagallinas === 0) {
        asigno=5;
      }
    }
  }
  if (asigno === 4) {
    image(perdiste, width/2, height/2);
  }
  if (asigno === 5) {
    image(ganaste, width/2, height/2);
  }
}

function mov(x1, x2, y1, y2, condi) {
  if (keyIsPressed===true) {
    if (keyIsDown( RIGHT_ARROW) && x1) {
      jx+=3;
    }
    if (keyIsDown(LEFT_ARROW) && x2) {
      jx-=3;
    }
  }
  if (keyIsDown(UP_ARROW) && y1) {
    jy-=3;
  }
  if (keyIsDown(DOWN_ARROW )&& y2) {
    jy+=3;
  }
  if (frameCount % 60 == 0 && tiempo > 0) {
    tiempo --;
  }
}

function cuenta(tiempo, x, y) {
  fill(0);
  textSize(50);
  text(tiempo, x, y);
}

function gallinasrestantes(atrapagallinas, x, y) {
  fill(0);
  noStroke();
  textSize(50);
  textFont(fuente);
  text(atrapagallinas, x, y);
}

function juanchito(num, jx, jy, ancho, alto) {
  image(juancho[num], jx, jy);
}

function toca (x, y, d, x1, y1, r) {
  let distancia = dist(x, y, x1, y1);
  if (distancia<d/2+r/2) {
    return true;
  } else {
    return false;
  }
}

function imagengallinas() {
  for (let i=0; i<cantgallinas; i++) {
    image(imagengallina, aleatorio[i][0], aleatorio[i][1]);
  }
}

function botonrec( x, y, ancho, alto) {
  let valor;
  if (mouseX>x && mouseY<x+ancho && mouseY>y && mouseY<y+alto) {
    valor = true;
  } else {
    valor = false;
  }
  return valor;
}

function botoncir(x, y, radio ) {
  let valor;
  let distancia = dist(mouseX, mouseY, x, y);
  let rad = radio/2;
  if ( distancia < rad) {
    valor = true;
  } else {
    valor = false;
  }
  return valor;
}


function reset() {
  asigno=0;
  num=0;
  jx=470;
  jy=140;
  cantgallinas=30;
  casillas=6;
  atrapagallinas = 30;
  tiempo = 20;
  for (let i=0; i<cantgallinas; i++) {
    aleatorio[i] = [];
    aleatorio[i][0] = random(30, 470);
    aleatorio[i][1] = random(90, 480);
  }
}

function keyPressed() {
  if (keyCode===82) {
    if (asigno===4) {
      reset();
    }
  }
  if (keyCode===82) {
    if (asigno===5) {
      reset();
    }
  }
}

function mousePressed() {
  if (botonrec(195, 255, 112, 40)) {
    if (asigno === 0) {
      asigno = 1;
    }
  }
  if (botoncir(450, 155, 60)) {
    if (asigno === 1) {
      asigno=2;
    }
  }

  if (botoncir(450, 450, 60)) {
    if (asigno ===2) {
      asigno=3;
    }
  }
}
