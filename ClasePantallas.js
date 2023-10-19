class pantallas {
  constructor() {
    this.portada = loadImage('data/portada.png');
    this.intro = loadImage('data/intro.png');
    this.instrucciones = loadImage('data/instrucciones.png');
    this.ganaste = loadImage('data/ganaste.png');
    this.perdiste = loadImage('data/perdiste.png');
    this.imgjuego = loadImage('data/fondojuego.png');
  }

  //Declaración del contenido de cada pantalla
  inicio() {
    imageMode(CENTER);
    image(this.portada, width/2, height/2);
  }

  historia() {
    imageMode(CENTER);
    image(this.intro, width/2, height/2);
  }

  guia() {
    imageMode(CENTER);
    image(this.instrucciones, width/2, height/2);
  }

  escenario() {
    imageMode(CENTER);
    image(this.imgjuego, width/2, height/2);
  }
  
  win(){
    imageMode(CENTER);
  image(this.ganaste, width/2,height/2);
  }
  
  lose(){
  imageMode(CENTER);
  image(this.perdiste, width/2,height/2);
  }
}
