// Mercado Mariana
// tp0 comisión 1

PImage paisaje;
PImage grilla;
background (19, 124, 172);
size (800, 400);
paisaje = loadImage ("muelle.jpg");
image (paisaje, 0, 0, 400, 400);

//Nubes
noStroke();
ellipseMode(CORNERS);
ellipse(411, 25, 440, 40);
ellipse(400, 53, 520, 80);
ellipse(404, 84, 453, 100);
ellipse(463, 83, 513, 100);
ellipse(460, 24, 531, 51);
ellipse(477, 3, 528, 22);
ellipse(655, 10, 677, 18);
ellipse(619, 74, 670, 92);
ellipse(653, 109, 787, 129);
ellipse(773, 60, 798, 75);

//Montañas
fill(49, 95, 121);
triangle(576, 154, 634, 139, 672, 153);
quad(576, 174, 575, 153, 672, 152, 674, 174);
triangle(522, 134, 536, 125, 549, 137);
quad(487, 172, 488, 132, 543, 133, 608, 174);
fill(51, 80, 96);
quad(400, 172, 400, 120, 482, 126, 584, 174);
triangle(712, 146, 767, 130, 800, 142);
quad(606, 174, 712, 145, 800, 141, 800, 174);

//Arena
fill(57, 60, 51);
rect(400, 226, 400, 400);

//Agua
fill(60, 160, 212);
rect(400, 172, 400, 176);

//Muelle parte del fondo
strokeWeight(4);
stroke(66, 77, 59);
line(517, 197, 671, 199);
strokeWeight(5); //cruces izquierda
line(548, 200, 548, 200);
line(516, 193, 516, 257);
line(670, 194, 670, 260);
line(518, 230, 550, 200);
line(547, 230, 518, 200);
strokeWeight(2);
line(518, 230, 547, 230);
strokeWeight(2); //linea en medio de izquierda
line(531, 196, 531, 230);
strokeWeight(8);
line(558, 197, 558, 230);
strokeWeight(3);
line(550, 203, 557, 210);
line(549, 210, 556, 216);
strokeWeight(2);  // lineas en medio del muelle
line(576, 184, 576, 198);
line(613, 184, 613, 200);
strokeWeight(5); //cruces muelle derecha
line(636, 200, 668, 232);
line(624, 216, 638, 203);
strokeWeight(3);
line(639, 228, 667, 200);
line(670, 203, 640, 232);

//Piso de muelle
noStroke();
fill(145, 135, 123);
quad(437, 400, 578, 196, 613, 196, 752, 400);

//Pilares muelle derecha
noStroke();
fill(51, 66, 63);
rectMode(CORNERS);
rect(579, 197, 576, 192);
rect(576, 202, 572, 197);
rect(573, 208, 569, 202);
rect(569, 213, 564, 206);
rect(567, 216, 561, 208);
rect(564, 221, 558, 212);
rect(559, 227, 554, 219);
rect(554, 239, 546, 228);
rect(547, 250, 538, 235);
rect(539, 268, 530, 249);
rect(523, 293, 511, 270);
rect(495, 341, 476, 310);

//Pilares muelle izquierda
rect(610, 192, 606, 198);
rect(614, 196, 610, 202);
rect(618, 202, 614, 208);
rect(621, 206, 617, 213);
rect(624, 209, 619, 216);
rect(627, 213, 622, 221);
rect(631, 219, 627, 229);
rect(639, 228, 631, 239);
rect(644, 236, 638, 249);
rect(658, 251, 650, 266);
rect(680, 273, 671, 293);
rect(714, 312, 700, 340);

//Persona
fill(0);
ellipseMode(CORNERS);
ellipse(593, 171, 597, 175);
triangle(591, 188, 595, 173, 599, 188);
stroke(0);
strokeWeight(2);
line(595, 176, 601, 185);
line(595, 176, 589, 184);
line(593, 188, 593, 198);
line(596, 188, 596, 198);
