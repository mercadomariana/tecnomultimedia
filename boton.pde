void mousePressed() {
  
if(botoniniciop(300,320,200,50)){
if(asigno == 0){
asigno = 1;
}
}

if(botoniniciop(522,29,145,45)){
if(asigno == 17){
asigno=0;
}
}

//avanzo
if(botonp(550,550,60)){
  if(asigno == 1){
asigno = 2;
}else if(asigno == 2){
  asigno = 3;
}else if(asigno == 3){
  asigno = 4;
}else if(asigno == 15){
 asigno = 16;
}else if(asigno == 10){
asigno = 11;
}else if(asigno == 11){
asigno = 12;
}else if(asigno == 12){
asigno = 13;
}else if(asigno == 14){
asigno = 17;
}else if(asigno == 5){
  asigno = 6;
}else if(asigno == 6){
asigno = 7;
}else if(asigno == 7){
asigno = 8;
}else if(asigno == 8){
asigno = 17;
}else if(asigno == 16){
  asigno = 17;
}else if(asigno == 13){
asigno = 14;
}
}

//condicionales
if(asigno == 4){
  if(botonp(100,300,60)){
    asigno = 5;
  }
  if(botonp(500,300,60)){
  asigno = 9;
    }
} else if(asigno == 9){
  if(botonp(100,300,60)){
  asigno= 15;
  }
  if(botonp(500,300,60)){
    asigno = 10;
  }
}

//reversa
if(botonp(50,550,60)){
  if(asigno == 1){
asigno = 0;
}else if(asigno == 2){
  asigno = 1;
}else if(asigno == 3){
  asigno = 2;
}else if(asigno == 15){
 asigno = 9;
}else if(asigno == 10){
asigno = 9;
}else if(asigno == 11){
asigno = 10;
}else if(asigno == 12){
asigno = 11;
}else if(asigno == 14){
asigno = 13;
}else if(asigno == 5){
  asigno = 4;
}else if(asigno == 6){
asigno = 5;
}else if(asigno == 7){
asigno = 6;
}else if(asigno == 8){
asigno = 7;
}else if(asigno == 16){
  asigno = 15;
}else if(asigno == 13){
asigno = 12;
}else if(asigno == 9){
asigno = 4;
}else if(asigno == 4){
asigno = 3;
}
}



}


  //reversa
