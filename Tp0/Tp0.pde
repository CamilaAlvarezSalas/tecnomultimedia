  PImage Imagen;
void setup(){
  size ( 800 , 400 );
  background (209, 160, 109);
  Imagen = loadImage ("Imagen tp0.png");
  image (Imagen, 0, 0, 400, 400);
}
void draw(){
  
  //Fondo
  fill(67, 58, 47);
  rect (400, 360, 800, 50);
  fill (40);
  rect (400, 328, 800, 48);
  fill (20);
  rect (400, 371, 800, 9);
  fill (240);
  
  //Auto
  stroke (160);
  beginShape();
  vertex (515, 250);
  vertex (570, 194);
  vertex (652, 194);
  vertex (742, 250);
  endShape();
  
  //Ventana
  stroke (90);
  fill(209, 160, 109);
  fill(0, 128, 128, 85);
   beginShape();
   vertex (540, 234);
   vertex (570, 200);
   vertex (652, 200);
   vertex (690, 224);
   vertex (690, 234);
   vertex (532, 234);
   endShape();
   fill (10);
   rect (610, 200, 8, 60);
  
  //Cuerpo del auto
  stroke(160);
  fill(250);
  rect (456, 234, 300, 85);
  
  //Puertas
  stroke(140);
  beginShape();
  vertex (540, 235);
  vertex (536, 246);
  vertex (536, 304); 
  vertex (662, 302);
  vertex (690, 235);
  endShape();
  ellipse (600, 248, 14, 6);
  ellipse (675, 247, 14, 6);
  
  beginShape ();
  vertex (620, 234);
  vertex (612, 246);
  vertex (612, 303);
  endShape(); 
  
  //Ruedas
  stroke (10);
  fill(10);
  ellipse (506, 300, 43, 75);
  fill(200);
  ellipse (506, 300, 33, 65);
  fill(10);
  ellipse (702, 300, 43, 75);
  fill(200);
  ellipse (702, 300, 33, 65);
  
  //Parte negra
  stroke (5);
  fill (5);
  beginShape ();
  vertex (457, 294);
  vertex (465, 290);
  vertex (469, 308);
  vertex (457, 310); 
  endShape ();
  
  //Luz 1
  stroke (30);
  fill (100);
  beginShape();
  vertex (476, 244);
  vertex (461, 250);
  vertex (461, 259);
  vertex (461, 261);
  vertex (476, 254);
  vertex (478, 247);
  vertex (476, 244);
  endShape ();
  
  //Luz 2
  stroke (300, 0, 0);
  fill (500, 0, 0);
  beginShape();
  vertex (738, 242);
  vertex (750, 243);
  vertex (751, 260);
  vertex (741, 258);
  vertex (736, 249);
  vertex (738, 242);
  endShape();
  rect (746, 286, 8, 3);
  stroke (10);
  }
