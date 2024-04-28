//tiziano landriel
//comision 1
PImage fondo1;
PImage fondo2;
void setup(){
size(800,400);
fondo1=loadImage("pingu.jpg");
fondo2=loadImage("pingu.jpg");
background(128,191,255);
}
void draw(){
background(199,236,250);
image(fondo1,0,0,400,400);
image(fondo2,400,0,400,400);
//coordenadas
println(mouseX);
println(mouseY);
fill(#C4F7FF);
rect(0,0,400,400);
fill(#F2FBFC);
rect(0,310,400,400);
fill(#292929);
rect(180,100,49,100);
fill(#292929);
rect(160,130,90,190,160);
fill(#F7F7F7);
rect(170,299,80,45,90);
fill(#F7F7F7);
rect(170,289,80,40);
fill(#FCE90A);
triangle(146,85,173,77,180,90);
triangle(146,85,180,90,172,96);
fill(#292929);
circle(196,90,50);
fill(#292929);
triangle(216,100,220,83,229,100);
fill(#EDDD22);
circle(200,100,20);
fill(#F7F7F7);
circle(205,105,20);
fill(#F7F7F7);
rect(170,122,45,30,90);
fill(#F7F7F7);
rect(175,110,45,50,90);
fill(#F7F7F7);
rect(150,140,80,170,90);
triangle(180,330,171,351,197,350);
triangle(185,330,176,351,200,350);
triangle(190,330,181,351,207,350);
triangle(204,331,195,350,215,348);
triangle(210,331,200,350,220,348);
triangle(215,331,205,350,225,348);
rect(150,140,80,170,90);
fill(#292929);
rect(220,150,45,155,190);
fill(#2C2C2C);
circle(187,85,13);
fill(#483500);
circle(186,83,10);


}
