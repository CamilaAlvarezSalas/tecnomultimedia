PImage Imagen1;
PImage Imagen2;
PImage Imagen3;
PImage Boton;
PFont Tipografia;
float Animacion1 = -200;
float Animacion2 = 600;
float Opacidad = 0;
int Pantalla = 1;

void setup(){
    size(640,480);
    textSize(30);
    
  //Asignación de valores
 
  
  // Imagenes y tipografía 
  Imagen1 = loadImage("Imagen tp 1.jpg");
  Imagen2 = loadImage("Imagen tp 2.jpg");
  Imagen3 = loadImage("Imagen nueva tp 3.jpg");
  Boton = loadImage ("Boton reinicio tp1.png");
  Tipografia = loadFont("JavaneseText-48.vlw");
 
}
  
void draw(){
  
  background(200);
    
    if (Pantalla == 1) {
      image(Imagen3, 0, 0, 640, 480);
      textFont(Tipografia, 38);
      fill(30, 114, 52, Opacidad);
      text("Leonardo da Vinci, reconocido como \nun hombre adelantado a su tiempo, \ndiseñó un prototipo de auto \npropulsado por sí mismo, que se cree \nes el primer vehículo de la historia.", 0, 100);
      Opacidad = Opacidad + 1.2;
  } else if (Pantalla == 2) {
      image(Imagen1, 0, 0, 640, 480);
      textFont(Tipografia, 35);
      fill(140, 0, 75);
      text("El carro de madera de Da Vinci \nfuncionaba gracias a la interacción \nde muelles con ruedas dentadas y \npretendía divertir a los hombres más \npoderosos de Italia durante las fiestas.", Animacion2, 140);
      Animacion2 = Animacion2 - 1.4;
  } else if (Pantalla == 3) {
      image(Imagen2, 0 ,0, 640, 480);
      textFont(Tipografia, 38);
      fill(175, 0, 94);
      text("El vehículo estaba compuesto por \nvarios muelles ballesta que regulaban \nel movimiento, mientras que el \nsistema de propulsión funcionaba con \ndos muelles de espiral situados \ndebajo del modelo", 0, Animacion1);
      Animacion1 = Animacion1 + 1.2;
  
}
    if(frameCount % 650 == 0){
    Pantalla = Pantalla + 1;
  }
    if(Pantalla > 3) {
      Pantalla = Pantalla - 1;
  } 
    if(frameCount > 1600) {
    image (Boton, 320, 360, 100, 100);
  }  
     }
void mouseClicked(){
    if(mouseX > 320 && mouseY > 390 && mouseX < 400 && mouseY < 435 && Pantalla == 3 && frameCount > 1600){
      Pantalla = 1;
      frameCount = 0;
      Animacion1 = -200;
      Animacion2 = 600;
      Opacidad = 0;
    }
} 
