class level extends game{
  level(){    
    x=1;
    y=50;
}
  void difficulty(){
    if (x==1){
      y=100; 
    }
  }
  void level1(){
   if(frameCount%100==0) game.add(new asteroid()); 
   
   }
  void level2(){
    if(frameCount%60==0) game.add(new asteroid());
  }


  
  
  
}
