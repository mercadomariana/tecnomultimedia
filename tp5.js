// Mariana Mercado
// 95503/8
// https://youtu.be/zbV8qdug8DM

let claseprincipal;
let clasepantallas;

function setup() {
  createCanvas(700, 700);
  claseprincipal = new principal();
}

function draw() {
  background(255);
  claseprincipal.display();
}

function mousePressed() {
  claseprincipal.funcionaboton();
}
