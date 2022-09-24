class bullet extends game{
  bullet(){
    x=ship.x;
    y=ship.y;
    dx=0;
    dy=-15;       
    hp=1;
  }
  void display(){
    fill(255,255,0); 
    ellipse(x,y,10,15);
  }
  void move(){
    x= x+dx;
    y= y+dy; 
    int i =0;
    while ( i < game.size()){
      game random = game.get(i);
      if(random instanceof asteroid){
         if(dist(random.x,random.y,x,y)<40)  hp=hp-1;  
      }

      
      i++;
    }
      if(dist(enemy1.x,enemy1.y,x,y)<60){
        enemy1.hp-=25;
        if(enemy1.hp>=0) hp=hp-1;
      }
      if(dist(enemy2.x,enemy2.y,x,y)<60){
        enemy2.hp-=25;
        if(enemy2.hp>=0) hp=hp-1;
      }
      if(dist(enemy3.x,enemy3.y,x,y)<60){
        enemy3.hp-=25;
        if(enemy3.hp>=0) hp=hp-1;
      }
      if(dist(enemy4.x,enemy4.y,x,y)<60){
        enemy4.hp-=25;
        if(enemy4.hp>=0) hp=hp-1;
      }
      if(dist(miniboss.x,miniboss.y,x,y)<60){
        if(lvl==2){
        miniboss.hp-=25;
        }
        if(miniboss.hp>=0) hp=hp-1;
      }
      if(dist(boss.x,boss.y,x,y)<90){
        boss.hp-=3;
        hp=hp-1;
      }


  }
  boolean removed(){
    return y<0||hp==0;
  }
  
  
  
  }
