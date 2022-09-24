class bonus1 extends game{
  bonus1(){
    x=random(100,700);
    y=-50;
    dx=0;
    dy=6;
    hp=1;
  }
  void display(){
    image(bonus1,x,y);
  }
  void move(){
    x=x+dx;
    y=y+dy;
    if(dist(ship.x,ship.y,x,y)<50){
      ship.hp+=50;
    }
  if(dist(ship.x,ship.y,x,y)<50) hp-=1;
  }
  boolean removed(){
    return hp<1;
  }
  
  
}
