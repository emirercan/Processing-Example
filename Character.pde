class character extends game{
  character(){
    x=400;
    y=800;
    dx=0;
    dy=0;
    hp=200;  
  }
  void display(){
    
    image(Ship,x,y);
    fill(255,0,0);
    rect(20,920,hp,20);
    if(lvl==1){
    stroke(255);
    strokeWeight(2);
    noFill();
    rect(20,920,200,20);
    }
    if(lvl==2){
    stroke(255);
    strokeWeight(2);
    noFill();
    rect(20,920,300,20);
      
    }
    

  }
  void move(){
    dx=0;
    dy=0;
    if(U) dy=-5;
    if(D) dy=+5;
    if(R) dx=+10;
    if(L) dx=-10;
    if(E) {
      if(frameCount%20==0){
      game.add(new bullet());
      }
    }
    x= x+dx;
    y= y+dy;
    int i =0;
    while ( i < game.size()){
      game random = game.get(i);
      if(random instanceof asteroid){
         if(dist(random.x,random.y,x,y)<90)  hp=hp-3;  
      }
      i++;
  } 
  }
  
  
}
