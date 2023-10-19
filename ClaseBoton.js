class boton {
  constructor(x, y) {
    this.x=x;
    this.y=y;
    this.d=130;
  }

  accionboton(x, y, d) {
    let valor;
    let distancia = dist(mouseX, mouseY, x, y);
    let  r = d/2;
    if ( distancia < r) {
      valor = true;
    } else {
      valor = false;
    }
    return valor;
  }
}
