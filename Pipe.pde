class Pipe{
  float x;
  float h;
  float w;
  int r;
  int g; 
  int b;
  Pipe( float xx){
    x = xx;
    h = random ( 500);
    w = 50;
    r = 0;
    g=225;
    b=0;
  }
  void draw (){
    fill(r,g,b);
    rect(x,0,w,h);
  
  }
  
 void update(Bird b){
   x -= 4;
   if(x< -100){
    x = width + 100;
    h = random (700);
   }
   
   hitTest(b);
   
 }
  
  boolean hitTest(Bird b){
    if( b.x + b.r > x && b.x - b.r < x + w && b.y - b.r < h){
      r= 255;
      g=0;
      println("noon");
      return true;
      
    }
    r=0;
    g=255;
    return false;
  }
  
  
  
  
  
  
  
  
}
