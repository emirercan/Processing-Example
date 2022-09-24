class minibossbullet extends game{
  minibossbullet(){
    x=miniboss.x;
    y=miniboss.y;
    dx=(ship.x-miniboss.x)/30;//fallow 
    dy=25;       
    hp=1;
  }
  void display(){
    fill(255,0,0); 
    ellipse(x,y,15,15);
    ellipse(x-20,y-5,15,15);
    ellipse(x+20,y-5,15,15);
  }
  void move(){
    x= x+dx;
    y= y+dy; 
    if(dist(ship.x,ship.y,x,y)<50){
      hp=hp-1;  
      ship.hp-=10;
    }  
  }
  boolean removed(){
    return y<0||hp==0;
  }
}
class mainbossbullet extends game{
  mainbossbullet(){
    x=400;
    y=200;
    dx=(ship.x-miniboss.x)/30;//fallow 
    dy=20;       
    hp=1;
  }
  void display(){
    fill(random(0,255),random(0,255),random(0,255)); 
    ellipse(x,y,50,50);
  }
  void move(){
    x= x+dx;
    y= y+dy; 
    if(dist(ship.x,ship.y,x,y)<55){
      hp=hp-1;  
      ship.hp-=100;
    }  
  }
  boolean removed(){
    return y<0||hp==0;
  }
}


class assistantbullet1 extends game{
  assistantbullet1(){
    x=235;
    y=200;
    dx=random(5,20);//fallow 
    dy=25;       
    hp=1;
  }
  void display(){
    fill(#FF3636); 
    ellipse(x,y,15,15);
  }
  void move(){
    x= x+dx;
    y= y+dy; 
    if(dist(ship.x,ship.y,x,y)<50)  {
      hp=hp-1;  
      ship.hp-=5;
    }  
  }
  boolean removed(){
    return y<0||hp==0;
  }
}



class assistantbullet2 extends game{
  assistantbullet2(){
    x=570;
    y=200;
    dx=random(-20,-5);//fallow 
    dy=25;       
    hp=1;
  }
  void display(){
    fill(#FF3636); 
    ellipse(x,y,15,15);
  }
  void move(){
    x= x+dx;
    y= y+dy; 
    if(dist(ship.x,ship.y,x,y)<50)  {
      hp=hp-1;  
      ship.hp-=5;
    }  
  }
  boolean removed(){
    return y<0||hp==0;
  }
}
