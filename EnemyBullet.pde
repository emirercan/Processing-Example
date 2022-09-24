class enemybullet extends game{
  enemybullet(){
    x=enemy1.x;
    y=enemy1.y;
    dx=(ship.x-enemy1.x)/30;//fallow 
    dy=20;       
    hp=1;
  }
  void display(){
    fill(255,0,0); 
    ellipse(x,y,10,10);
  }
  void move(){
    
    x= x+dx;
    y= y+dy; 
    damage=false;
    if(dist(ship.x,ship.y,x,y)<60)  {
      hp=hp-1;  
      ship.hp-=3;
      damage = true;
  }  
  }
  boolean removed(){
    return y<0||hp==0;
  }
  
  
  
}

class enemybullet2 extends game{
  enemybullet2(){
    x=enemy2.x;
    y=enemy2.y;
    dx=(ship.x-enemy2.x)/30;//fallow 
    dy=20;       
    hp=1;
  }
  void display(){
    fill(255,0,0); 
    ellipse(x,y,10,10);
  }
  void move(){
    x= x+dx;
    y= y+dy; 
    
    if(dist(ship.x,ship.y,x,y)<60)  {
      hp=hp-1;  
      ship.hp-=3;
  }  
  }
  boolean removed(){
    return y<0||hp==0;
  }
  
  
  
}

class enemybullet3 extends game{
  enemybullet3(){
    x=enemy3.x;
    y=enemy3.y;
    dx=(ship.x-enemy3.x)/30;//fallow 
    dy=20;       
    hp=1;
  }
  void display(){
    fill(255,0,0); 
    ellipse(x,y,10,10);
  }
  void move(){
    x= x+dx;
    y= y+dy; 
    
    if(dist(ship.x,ship.y,x,y)<60)  {
      hp=hp-1;  
      ship.hp-=3;
  }  
  }
  boolean removed(){
    return y<0||hp==0;
  }
  
  
  
}

class enemybullet4 extends game{
  enemybullet4(){
    x=enemy4.x;
    y=enemy4.y;
    dx=(ship.x-enemy4.x)/30;//fallow 
    dy=20;       
    hp=1;
  }
  void display(){
    fill(255,0,0); 
    ellipse(x,y,10,10);
  }
  void move(){
    x= x+dx;
    y= y+dy; 
    
    if(dist(ship.x,ship.y,x,y)<60)  {
      hp=hp-1;  
      ship.hp-=3;
  }  
  }
  boolean removed(){
    return y<0||hp==0;
  }
  
}


  
  
