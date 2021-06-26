class Meoo{
  float x;
  float y;
  float speedX;
  float speedY;
  Meoo( float xx, float yy){
   x = xx;
   y = yy;
   speedX = 6;
   speedY = 0; 
  }
  
  void draw(){
      if( speedY < 0){
        birdUp();
      }
      else 
      birdDown();
    }
    void update(){
      speedY = speedY + gravity;
      y = y + speedY; 
    }
    void flap(){
      if (speedY <= 6){
        speedY = speedY - 7;
      }
    }
    
    void move(){
      if(key == 'a'){
        x -= speedX;
      }
         if(key == 'd'){
        x += speedX;
      }
      
    }
    void birdUp(){
       circle(x,y,100);
       line (x,y,x-5,y-5);
       line (x,y,x+5,y-5); 
    }
    void birdDown(){
       circle(x,y,100);
       line (x,y-10,x-5,y-5);
       line (x,y-10,x+5,y-5);
}
}
