PFont f;
int value = 1;
boolean mouseStatus = false;


//-----BandeiraOriginal------------------
void option_1(){
  
  float largura = 700;
  float altura = 500;
  
  //Quadrado
  strokeWeight(4);  // Default
  stroke(255);
  fill(0, 150, 0);
  rect(50, 50, 700, 500);
  
  //Ajustando posicionamento
  translate(50, 50);
  
  //Losango
  fill(255,255,0);
  noStroke();
  quad(largura/8.0, altura/2, largura/2, altura/8.0, (7.0/8.0)*largura, altura/2, largura/2, (7/8.0)*altura);

  //circulo
  fill(0,0,100);
  noStroke();
  circle(350, 250, (1.0/3.0)*largura);
  
  //Texto
  textFont(f,20);
  fill(255,255,0);                         // STEP 4 Specify font color
  text("ORDEM e PROGRESSO",238, 250);      // STEP 5 Display Text
  save("BandeiraOriginal.png");
}


//-----BandeiraInvertida------------------

void option_2(){
  
  float largura = 700;
  float altura = 500;
  
  //Quadrado
  strokeWeight(4);  // Default
  stroke(255);
  fill(254, 158, 255, 255);
  rect(50, 50, 700, 500);
  
  //Ajustando posicionamento
  translate(50, 50);
  
  //Losango
  fill(0,0,254,255);                         // STEP 4 Specify font color
  
  noStroke();
  quad(largura/8.0, altura/2, largura/2, altura/8.0, (7.0/8.0)*largura, altura/2, largura/2, (7/8.0)*altura);

  //circulo
  fill(255,255,159,255);
  noStroke();
  circle(350, 250, (1.0/3.0)*largura);
  
  //texto
  textFont(f,20);
  fill(0,0,254,255);                         // STEP 4 Specify font color
  text("ORDEM e PROGRESSO",238, 250);      // STEP 5 Display Text
  save("BandeiraIvertida.png");
}

//-----BandeiraDeslocada------------------
void option_3(){
  
  float largura = 700;
  float altura = 500;
  
  //Quadrado
  strokeWeight(4);  // Default
  stroke(255);
  fill(0, 150, 0);
  rect(50, 50, 700, 500);
  
  //Ajustando posicionamento
  translate(50.0 + largura/8.0, 50);
  
  //Losango
  fill(255,255,0);
  noStroke();
  quad(largura/8.0, altura/2, largura/2, altura/8.0, (7.0/8.0)*largura, altura/2, largura/2, (7/8.0)*altura);

  //circulo
  fill(0,0,100);
  noStroke();
  circle(350, 250, (1.0/3.0)*largura);
  
  //Texto
  textFont(f,20);
  fill(255,255,0);                         // STEP 4 Specify font color
  text("ORDEM e PROGRESSO",238, 250);      // STEP 5 Display Text
  save("BandeiraDeslocada.png");
}

//-----BandeiraTransparencia------------------
void option_4(){
  
  float largura = 700;
  float altura = 500;
  
  //Quadrado
  strokeWeight(4);  // Default
  stroke(255);
  fill(0, 150, 0);
  rect(50, 50, 700, 500);
  
  //Ajustando posicionamento
  translate(50, 50);
  
  //Losango
  fill(255,255,0);
  noStroke();
  quad(largura/8.0, altura/2, largura/2, altura/8.0, (7.0/8.0)*largura, altura/2, largura/2, (7/8.0)*altura);

  //circulo
  fill(57,180,255 );
  ellipse(350,250,233.33,233.33);
  fill(50,100,200);
  ellipse(350,250,200,200);
  fill(0,0,100);
  ellipse(350,250,150,150);
    
  //Texto
  textFont(f,20);
  fill(255,255,0);
  text("ORDEM",310,160);
  text("E",340,250);
  text("PROGRESSO",290,340);
  save("BandeiraTransparencia.png");
}

//===== Main =============
void setup() {
  size(800, 600);
  f = createFont("Arial",16,true);
}

void draw() {
  if ((keyPressed && key == 't') || (keyPressed && key == 't')){
    option_4();
  } else if (mousePressed && (mouseButton == RIGHT)) {
    option_3();
  }
  else if (mousePressed && (mouseButton == LEFT)) {
    option_2();  
  } else {
    option_1();
  }
}
