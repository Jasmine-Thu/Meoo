Bird b = new Bird(100,500, 50,'a' );
Bird b2 = new Bird( 800,500,100, 'd');
ArrayList <Pipe> pipes = new ArrayList < Pipe>();

float gravity = 0.01; 
void setup(){
 size (1000,1000); 
pipes.add(new Pipe(600));
pipes.add(new Pipe(500));
pipes.add(new Pipe(400));
pipes.add(new Pipe(700));
pipes.add(new Pipe(800));
pipes.add(new Pipe(900));
} 
void draw(){
  background(60, 192, 240);
  b.draw();
 b.update();
 b2.draw();
 b2.update();
 for ( Pipe p : pipes){
 p.draw();
 p.update(b);
 }
}

//void mousePressed(){
//  if(mousePressed){
//    b.flap();
//    b2.flap();
//  }
  
  
//}

void keyPressed(){
   if(key == b.jumpKey){
    b.flap();
   }
  if(key == b2.jumpKey){
    b2.flap();
  }
  
}
