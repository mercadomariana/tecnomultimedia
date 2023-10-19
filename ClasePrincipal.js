class principal {

  constructor() {
    //llama a otras clases
    this.botfinal = new boton(615, 615);
    this.pantalla = new pantallas();
    this.botportada = new boton(width/2, 620);
    this.botintro = new boton(208, 617);
    this.botinstrucciones = new boton(608, 628);
    this.margot = new clasemargot(600, 200, 40, 70);
    this.contador = new clasecontadores();
    //asignacion de valores
    this.asigno = 0;
    this.keys = [];
    this.cantllaves = 30;
    this.timer = 10;
    this.llavesrestantes = 30;
    this.llavesrandom();
  }

  //carga y generacion de las llaves en posicion random
  llavesrandom() {
    for (let i=0; i<this.cantllaves; i++) {
      this.keys[i] = new llaves(random(50, 650), random(190, 650), 45, 42);
    }
  }

  generallaves() {
    for (let i=0; i<this.cantllaves; i++) {
      this.keys[i].muestra();
    }
  }

  //condicional boton
  funcionaboton() {
    if (this.asigno===0) {
      if (this.botportada.accionboton(width/2, 620, 130)) {
        this.asigno = 1;
      }
    }
    if (this.asigno===1) {
      if (this.botintro.accionboton(208, 617, 130)) {
        this.asigno = 2;
      }
    }
    if (this.asigno===2) {
      if (this.botinstrucciones.accionboton(608, 628, 130)) {
        this.asigno= 3;
      }
    }
    if (this.asigno===4) {
      if (this.botfinal.accionboton(615, 615, 120)) {
        this.reset();
      }
    }
    if (this.asigno===5) {
      if (this.botfinal.accionboton(615, 615, 120)) {
        this.reset();
      }
    }
  }

  //se muestra en pantalla:
  display() {
    if (this.asigno === 0) {
      this.pantalla.inicio();
    }
    if (this.asigno === 1 ) {
      this.pantalla.historia();
    }
    if (this.asigno === 2) {
      this.pantalla.guia();
    }

    if (this.asigno===3) {
      //dibuja llaves
      this.pantalla.escenario();
      this.generallaves();
      this.margot.dibujamargot();
      this.movmargot(keyCode);
      //llamado de la colisión
      this.contacto();
      //dibuja contador de tiempo
      this.contador.tiempo(this.timer, 500, 95);
      //condicional para cuenta regresiva
      if (frameCount % 60 == 0 && this.timer>0) {
        this.timer--;
      }
      //dibuja contador de llaves restantes
      this.contador.llavesrestantes(this.llavesrestantes, 200, 95);
      //condicional ganar o perder
      if (this.timer>0) {
        if (this.llavesrestantes === 0) {
          this.asigno=4;
        }
      }
      if (this.timer === 0) {
        if (this.llavesrestantes > 0) {
          this.asigno=5;
        }
      }
    }
    if (this.asigno===4) {
      this.pantalla.win();
    }
    if (this.asigno===5) {
      this.pantalla.lose();
    }
  }

  //movimiento margot
  movmargot(tecla) {
    this.tec=tecla;
    if (keyIsDown(RIGHT_ARROW) && this.margot.mx<width-100/2) {
      this.margot.mx+=5;
    }
    if (keyIsDown(LEFT_ARROW) && this.margot.mx>120/2) {
      this.margot.mx-=5;
    }
    if (keyIsDown(UP_ARROW) && this.margot.my>430/2) {
      this.margot.my-=5;
    }
    if (keyIsDown(DOWN_ARROW ) && this.margot.my<height-100) {
      this.margot.my+=5;
    }
  }

  //Parámetros para la colision
  conditoca(xllave, yllave, anchollave, mx, my, mancho, malto) {
    return xllave+anchollave>mx && xllave<mx+mancho && yllave+anchollave/2>my && yllave<my+malto;
  }

  contacto() {
    for (let i=0; i<this.cantllaves; i++) {
      if (this.conditoca(this.keys[i].x, this.keys[i].y, this.keys[i].ancho, this.margot.mx, this.margot.my, this.margot.anm, this.margot.alm)) {
        this.keys[i].x = 800;
        this.keys[i].y = 800;
        this.llavesrestantes--;
      }
    }
  }

//metodo de reseteo
  reset() {
    this.asigno = 0;
    this.timer = 10;
    this.llavesrestantes = 30;
    this.num = 0;
    this.margot.mx = 600;
    this.margot.my = 200
    this.llavesrandom();
    this.generallaves();
  }
}
