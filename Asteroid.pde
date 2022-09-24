class asteroid extends game{
  asteroid(){
    x=random(50,750);
    y=20;
    dx=0;
    dy=10;
    hp=3;
    
  }
  void display(){
    image(Asteroid,x,y);
  }
  void move(){
    x= x+dx;
    y= y+dy;
    
    int i =0;
    while ( i < game.size()){
      game random = game.get(i);
      if(random instanceof bullet){
         if(dist(random.x,random.y,x,y)<50)  hp=hp-1;  
      }
      i++;
    }
    if(dist(ship.x,ship.y,x,y)<=60) hp=hp-3;



  }
  boolean removed(){
    return y>1000||hp<=0;
  }
  
  
  
}
