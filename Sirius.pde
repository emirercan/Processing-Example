boolean U,D,L,R,E,B;
ArrayList<game> game=new ArrayList<game>();
character ship= new character();
level level=new level();
PImage Ship;
PImage Asteroid;
PImage Enemy;
PImage MiniBoss;
PImage Boss;
PImage GameOver;
PImage bonus1;
PImage YouWin;
boolean damage=false;
enemy enemy1=new enemy();
enemy enemy2=new enemy();
enemy enemy3=new enemy();
enemy enemy4=new enemy();
miniboss miniboss=new miniboss();
boss boss = new boss();
bonus1 bonush=new bonus1();
bonus1 bonush2= new bonus1();
PImage bg;
int lvl=0;
PImage level1;
PImage level2;
PImage level3;
PImage startscreen;
PImage button;
PImage enter;
PFont title;
void setup(){
  size(800,950);
  ellipseMode(CENTER);
  imageMode(CENTER);
  Ship = loadImage("image/Ship1.png");
  Asteroid = loadImage("image/asteroid2.png");
  Enemy=loadImage("image/enemy.png");
  MiniBoss=loadImage("image/miniboss1.png");
  Boss= loadImage("image/boss.png");
  bg= loadImage("image/bg.jpg");
  level1=loadImage("image/Level1.png");
  level2=loadImage("image/Level2.png");
  level3=loadImage("image/Level3.png");
  GameOver= loadImage("image/GameOver.png");
  startscreen = loadImage("image/startscreen.jpeg");
  button = loadImage("image/button.png");
  enter = loadImage("image/enter.png");
  title = loadFont("HiraMaruProN-W4-80.vlw");
  textFont(title);
  bonus1= loadImage("image/bonus1.png");
  YouWin= loadImage("image/youwin.png");
}

void draw(){

  background(0);
  if(lvl==0){    
    rectMode(CENTER);
    noStroke();
    image(startscreen,400,475,800,950);
    fill(0,150);
    rect(425,575,300,100);
    fill(255,100);
    rect(425,410,850,155);
    textAlign(CENTER);
    textSize(97);
    fill(0);
    text("SIRIUS GAME",425,250);
    textSize(100);
    fill(#CEB3FA);
    text("SIRIUS GAME",425,250);
    textSize(75);
    fill(0);
    text("OYNA",424,600);
    textSize(80);
    fill(#FFA2DF);
    text("OYNA",424,600);
    textSize(30);
    fill(#CEB3FA);
    text("Oyuna başlamak için OYNA butonuna tıklayınız.",425,700);
    textSize(17);
    fill(255);
    text("DÜŞMAN GEMILERININ SALDIRISINDAN VE METEOR YAGMURUNDAN KAÇMALISIN!",400,400);
    textSize(20);
    text("DÜŞMAN GEMILERINI YOK EDEREK HAYATTA KALMALISIN!",400,370);
    textSize(15);
    fill(0);
    text("HAREKET TUŞLARI:",180,470);
    fill(0);
    text("ATEŞ ETME TUŞU:",580,470);
    image(button,350,450,150,150);
    image(enter,700,450,100,100);  
}
  
  //level1
  if(lvl==1){
  
  rectMode(CORNER);
  if(frameCount<=150) {
    image(level1,400,475,950,950);
    
  }
  else{
  
  image(bg,400,400);                
  ship.display();                  
  ship.move();
  level.level1();
  int i = game.size()-1;
  while(i>=0){
    game object = game.get(i);
    object.display();
    object.move();
    if(object.removed()){
      game.remove(i);
    }
    i--; 
  }
  enemy2.x=200;
  enemy3.x=600;
  
  
  if(frameCount>=360){
   
    if(enemy1.hp>=0) {

    enemy1.display();
    enemy1.move();
    }
    if(enemy2.hp>=0){
    enemy2.display();
    enemy2.move();
    }
    if(enemy3.hp>=0){
    enemy3.display();
    enemy3.move();
    }
  }

  
  
  if(enemy1.hp<=0&enemy2.hp<=0&enemy3.hp<=0) {
    lvl=2;
    frameCount=0;
      ship.hp=300;
      ship.x=400;
      ship.y=800;
      enemy1.y=-100;
      enemy2.y=-100;
      enemy3.y=-100;
      enemy1.hp=200;
      enemy2.hp=200;
      enemy3.hp=200;
      enemy4.hp=200;
      enemy1.dy=5;
      enemy2.dy=5;
      enemy3.dy=5;
      enemy4.dy=5;
      miniboss.hp=300;
      bonush2.y=-50;
  }
  if(ship.hp<=0) lvl=4; //gameover
  }
  }
  
  //level2
  
  if(lvl==2){ 
  if(frameCount<=150) {
    image(level2,400,475,950,950);
  }
  else{
  image(bg,400,400);
  ship.display();
  ship.move();
  level.level2();
  int i = game.size()-1;
  while(i>=0){
    game object = game.get(i);
    object.display();
    object.move();
    if(object.removed()){
      game.remove(i);
    }
    i--; 
  }
  enemy1.x=150;
  enemy2.x=300;
  enemy3.x=450;
  enemy4.x=600;
  
  
  if(frameCount>=360){
   

    if(enemy1.hp>=0) {
    enemy1.display();
    enemy1.move();
    }
    if(enemy2.hp>=0){
    enemy2.display();
    enemy2.move();
    }
    if(enemy3.hp>=0){
    enemy3.display();
    enemy3.move();
    }
    if(enemy4.hp>=0){
      enemy4.display();
      enemy4.move();
    }
  }
  if(enemy1.hp<=0&enemy2.hp<=0&enemy3.hp<=0&enemy4.hp<=0){
    miniboss.display();
    miniboss.move();
  }
  if(ship.hp<=150){
   if(bonush.hp>=0) bonush.display();
   bonush.move();
 }


 
  
  if(miniboss.hp<=0){
    frameCount=0;
    lvl=3;
    ship.hp=300;
    ship.x=400;
    ship.y=800;
  }
  if(ship.hp<=0) lvl=4;
  }
}
  
  
  
  
  if(lvl==3){
  if(frameCount<=150) {
    image(level3,400,475,950,950);
  }
    else{
    image(bg,400,400);
    ship.display();
    ship.move();
    
    boss.display();
    boss.move();
    int i = game.size()-1;
    while(i>=0){
    game object = game.get(i);
    object.display();
    object.move();
    if(object.removed()){
      game.remove(i);
    }
    i--; 
  }
  if(ship.hp<=0) lvl=4;
  if(boss.hp<=0) lvl=5;
 }
}
  
  
  
  
  
  if(lvl==4){
    image(GameOver,400,475,800,800);
    if(mousePressed) {
      lvl=1;
      ship.hp=200;
      ship.x=400;
      ship.y=800;
      enemy1.y=-100;
      enemy2.y=-100;
      enemy3.y=-100;
      enemy4.y=-100;
      enemy1.hp=200;
      enemy2.hp=200;
      enemy3.hp=200;
      enemy4.hp=200;
      enemy1.dy=5;
      enemy2.dy=5;
      enemy3.dy=5;
      enemy4.dy=5;
      enemy1.x=400;
      enemy2.x=200;
      enemy3.x=600;
      enemy4.x=800;
      frameCount=0;
      miniboss.hp=300;
      miniboss.x=400;
      miniboss.y=-200;
      miniboss.dy=5;
    }
  }
if(lvl==5){
  image(YouWin,400,475,950,950);
}


}


void keyPressed(){
if(keyCode == UP) U = true;
if(keyCode == DOWN) D = true;
if(keyCode == LEFT) L = true;
if(keyCode == RIGHT) R = true;
if(keyCode == ENTER) E = true;
if(keyCode == BACKSPACE) B = true;
}
void keyReleased(){
if(keyCode == UP) U = false;
if(keyCode == DOWN) D = false;
if(keyCode == LEFT) L = false;
if(keyCode == RIGHT) R = false;
if(keyCode == ENTER) E = false;
if(keyCode == BACKSPACE) B = false;
}

void mouseClicked(){
  if(mouseX<575 && 275<mouseX  && 525<mouseY && mouseY<625) lvl=1;
  
}
