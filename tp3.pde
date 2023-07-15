//NOMBRE: Mariana Mercado
//LEGAJO: 95503/8
//https://youtu.be/clT9YnGCsFk

int cant=18, numero;
int asigno;
PImage [] escenas = new PImage [cant];
String [] textos = {"Desde hace 7 años llovía en el planeta Venus y jamás salía el sol.\nEste fue el lugar donde muchos humanos se mudaron, donde crearon una\nnueva civilación y entre ellos estaba Margot, una niña que hace muy\npoco se había mudado a este sobrio planeta.", " Margot era una niña muy reservada y apartada. Estaba deprimida\nporque extrañaba el Sol y solo pensaba en eso, en como extrañaba\nel calor y la luz de la estrella. Y cuando en clase hablaban del\nSol, Margot era siempre la experta en el tema, pues a diferencia\nde los otros niños, ella no había nacido en Venus.", " Margot se había perdido demasiado en la lluvia jamás socializaba,\nnunca participaba de las actividades, de las canciones, o de los\njuegos bajo tierra. Por esto  Los niños siempre se burlaban de ella\npues era la 'rarita' de la clase.", "Pero un día estaba muy cansada de sus compañeros, así que tenía\nque decidir si contarle a la maestra que siempre la molestaban o\ncontinuar callada para no generar más conflictos de los que ya había", " Y entonces Margot se armó de valor y decidió contarle a su\nprofesora todo el daño y las cosas terribles que los niños decían\ny hacían en contra de ella.", "Entonces la maestra, muy furiosa, los reunió a todos y los regañó.\nHaciéndoles caer en cuenta de lo mal que habían actuado y les explicó\nlo maravilloso que era el Sol y por qué Margot se deprimía.\nSin embargo, mientras la maestra hablaba...", "¡El Sol comenzó a salir entre las montañas y la lluvia después de\n7 años por fin se detuvo!", "Y Margot, la pequeña y depresiva niña de 9 años logró sentir el calor\ny los rayos de la deslumbrante estrella sobre su piel.\nPor fin su sueño se cumplió.", " Pero Margot decidió mejor no generar más problemas de los que había y no\nse defendió. Entonces los crueles niños la encerraron dentro de un armario\nde la escuela.\nElla no sabía que hacer. Tenía que decidir si luchar para salir y cobrar\nvenganza o quedarse en el armario sola esperando a ser rescatada.", " En eso los niños sintieron un raro calor en su espalda. Se giraron y por\nla ventana de la escuela vieron como la lluvia cesaba, había un silencio\ncalmado y tranquilo, pero sobretodo, el Sol había salido.", " Los niños corrieron a alistarse para salir a jugar afuera y sentir el\ncalor del Sol.", "Los niños salieron y se divirtieron. Corrieron por todo el lugar y\njugaron con las plantas del lluvioso planeta. No podían creer lo que estaban\nviviendo, no podían creer que Margot tenía razón. Pero es verdad. ¿Y Margot?", "Pasaron unas horas y el sol se escondió y la lluvia volvió a caer\nen el lluvioso planeta. Los niños tuvieron que entrar de nuevo al salón \nde clases y cuando entraron se acordaron... ¡Margot! gritó una de las niñas.", "Corrieron hacia la puerta y los niños no escucharon absolutamente nada.\nAbrieron muy despacio la puerta y dejaron salir a Margot.", "Margot buscó objetos dentro del armario y encontró un cuchillo afilado.\nCon eso rompió toda la puerta y cuando salió estaba harta de que la \ntrataran de boba. Por esto tomó el cuchillo y sin pensarlo dos veces se los\nenterró a todos y cada uno de los niños que se habían burlado de ella.\nY una vez finalizó la masacre sintió algo raro en su espalda y se dio la vuelta.", "¡El Sol había salido! ¿Y lo mejor? Margot lo pudo disfrutar sin burlas,\nsin quejas, sin ningún sonido. Después de ese momento Margot volvió a ser la\nfeliz niña que alguna vez fue en el planeta Tierra"};
boolean valor;


void setup() {
  size(600, 600);
  asigno = 0;
  for (int i=0; i<cant; i++) {
    escenas[i] = loadImage("escena"+i+".jpg");
  }
}

void draw() {
  println(mouseX, mouseY);

  if (asigno==0) {
    image(escenas[0], 0, 0);
    textAlign(CENTER, CENTER);
    textSize(20);
    dibujobotoninicio(300, 320, 200, 50, 220);
    botoniniciop(300, 320, 200, 50);
    fill(0);
    text("inicio", width/2, 320);
  }

  if (asigno ==1) { 
    pantallanormal(0,1);
    guia("Atrás", 90,560);
    guia("Siguiente", 430,560);
  }

  if (asigno==2) {  
    pantallanormal(1,2);
    guia("Atrás", 90,560);
    guia("Siguiente", 430,560);
  }

  if (asigno==3) {
    pantallanormal(2,7);
    guia("Atrás", 90,560);
    guia("Siguiente", 430,560);
  }

  if (asigno==4) {
    pantallacondicion(3,8);
    fill(255,145,203,190);
    textAlign(CENTER,CENTER);
    rect(100,240,100,50,30);
    rect(500,240,100,50,30);
    fill(0);
    text("Contarle a la\n maestra", 100,240);
    text("Quedarse\n callada", 500,240);
    guia("Atrás", 90,560);
  }

  if (asigno==5) {
    pantallanormal(4,3);
    guia("Atrás", 90,560);
    guia("Siguiente", 430,560);
  }
  if (asigno==6) {
    pantallanormal(5,4);
    guia("Atrás", 90,560);
    guia("Siguiente", 430,560);
  }
  if (asigno==7) {
    pantallanormal(6,5);
    guia("Atrás", 90,560);
    guia("Siguiente", 430,560);
  }
  if (asigno==8) {
    pantallanormal(7,6);
    guia("Atrás", 90,560);
    guia("Siguiente", 430,560);
  }
    if (asigno==9) {
    pantallacondicion(8,9);
    fill(255,145,203,190);
    rect(100,360,100,50,30);
    rect(500,360,100,50,30);
    fill(0);
    text("Luchar", 100,355);
    text("Salir", 500,355);
    guia("Atrás", 90,560);
  }
    if (asigno==10) {
    pantallanormal(9,10);
    guia("Atrás", 90,560);
    guia("Siguiente", 430,560);
  }
    if (asigno==11) {
      pantallanormal(10,11);
      guia("Atrás", 90,560);
      guia("Siguiente", 430,560);
  }
    if (asigno==12) {
      pantallanormal(11,14);
      guia("Atrás", 90,560);
      guia("Siguiente", 430,560);
  }
    if (asigno==13) {
      pantallanormal(12,15);
      guia("Atrás", 90,560);
      guia("Siguiente", 430,560);
  }
    if (asigno==14) {
      pantallanormal(13,16);
      guia("Atrás", 90,560);
      guia("Siguiente", 430,560);
  }
    if (asigno==15) {
    pantallanormal(14,12);
    guia("Atrás", 90,560);
    guia("Siguiente", 430,560);
  }
    if (asigno==16) {
      pantallanormal(15,13);
      guia("Atrás", 90,560);
      guia("Siguiente", 430,560);
  }
  if (asigno==17){
  image(escenas[17],0,0);
  dibujobotoninicio(522, 29, 145, 45, 220);
  botoniniciop(522,29,145,45);
  fill(0);
  textAlign(CENTER);
  textSize(15);
  text("Iniciar de nuevo", 522,32);
  }
  
}

 
