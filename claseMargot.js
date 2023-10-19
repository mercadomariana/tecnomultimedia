class clasemargot {

  constructor(mx, my,anm,alm) {
    this.mx = mx;
    this.my = my;
    this.imgmargot = [];
    this.num = 0;
    this.alm=alm; //alto de imagen de margot
    this.anm=anm; //ancho de imagen de margot
    //carga de las imagenes usando arreglos
    for (let i=0; i<6; i++) {
      this.imgmargot.push(loadImage('data/camina'+i+'.png'));
    }
   
  }

  dibujamargot() {
    //condicional de avance de fotogramas
    if (frameCount%18==0) {
      if (this.num<5) {
        this.num++;
      } else {
        this.num=0;
      }
    }
    for (let i=0; i<6; i++) {
      image(this.imgmargot[this.num], this.mx, this.my);
    }
  }

}
