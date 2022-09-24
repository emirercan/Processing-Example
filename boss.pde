class miniboss extends game{

  miniboss(){
    x=400;
    y=-200;
    dx=0;
    dy=5;
    hp=300;
  }
  
  void display(){
    image(MiniBoss,x,y);
    fill(#AF1010);
    rect(x-25,y-130,hp/4,12,5);  
  }
  
  void move(){
    x=x+dx;
    y=y+dy;
    if(y==150) dy=0;
    if(frameCount%25==0) game.add(new minibossbullet());
  } 
  boolean removed(){
    return y<0||hp<=0;
  }      
}



class boss extends game{
  boss(){
    x=400;
    y=-200;
    dx=0;
    dy=5;
    hp=500;        
  }
  
  void display(){
    image(Boss,x,y);
    fill(0,0,255);
    rect(20,20,boss.hp/4,20);
  
  }
  
  void move(){
    x=x+dx;
    y=y+dy;
    if(y==120) dy=0;
    if(frameCount%50==0) game.add(new mainbossbullet());
    if(frameCount%20==0) game.add(new assistantbullet1());
    if(frameCount%20==0) game.add(new assistantbullet2());    
}

}

  
  
  
  
