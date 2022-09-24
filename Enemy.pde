class enemy extends game{
  enemy(){
    x=400;
    y=-100;
    dx=0;
    dy=5;  
    hp=200;
  }
  
  void display(){
    
    image(Enemy,x,y);
    fill(#AF1010);
    rect(x-24,y-130,hp/4,12,5);
    
  }
  void move(){
    x=x+dx;
    y=y+dy;
    if(y==150) dy=0;
    if(lvl==1){
      if(frameCount%100==0) if(enemy1.hp>=0) game.add(new enemybullet());
      if(frameCount%100==0) if(enemy2.hp>=0) game.add(new enemybullet2());
      if(frameCount%100==0) if(enemy3.hp>=0) game.add(new enemybullet3());
    }
    if(lvl==2){
    if(frameCount%60==0) if(enemy1.hp>=0) game.add(new enemybullet());
    if(frameCount%55==0) if(enemy2.hp>=0) game.add(new enemybullet2());
    if(frameCount%65==0) if(enemy3.hp>=0) game.add(new enemybullet3());
    if(frameCount%70==0) if(enemy4.hp>=0) game.add(new enemybullet4());
    }
    
    
      
  }
  boolean removed(){
    return y<0||hp<=0;
  }
  
}
