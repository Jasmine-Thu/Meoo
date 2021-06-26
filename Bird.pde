class Bird{
  float x;
  float y;
  float speedX;
  float speedY;
  float r;
  char jumpKey;
  Bird( float xx, float yy, float rr, char jump){
   x = xx;
   y = yy;
   r = rr;
   speedX = 0;
   speedY = 0; 
   jumpKey = jump;
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
        speedY = speedY - 2;
      }
      
    }  
    void birdUp(){
       circle(x,y,r*2);
       line (x,y,x-5,y-5);
       line (x,y,x+5,y-5); 
    }
    void birdDown(){
       circle(x,y,r*2);
       line (x,y-10,x-5,y-5);
       line (x,y-10,x+5,y-5);
}
 void move(){
      if(key == 'a'){
        x -= speedX;
      }
         if(key == 'd'){
        x += speedX;
      }
      
    }
}
