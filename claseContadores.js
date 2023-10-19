class clasecontadores {
  constructor() {
    this.fuente = loadFont('data/fuentita.ttf');
  }

  tiempo(timer, xtiempo, ytiempo) {
    fill(0);
    textSize(70);
    textFont(this.fuente);
    text(timer, xtiempo, ytiempo);
  }

  llavesrestantes(cantllaves, xrestante, yrestante) {
    fill(0);
    textSize(70);
    textFont(this.fuente);
    text(cantllaves, xrestante, yrestante);
  }
}
