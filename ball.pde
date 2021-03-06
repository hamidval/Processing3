class Ball
{
  PVector position;    // Position of the ball.
  PVector velocity;    // Amount it moves on each redraw.
  float radius;        // Radius of ball.
  color colour;        // Colour of ball.
  float rectx;
  float recty;
  int score = 0;
  float w;
  
  // Initialises the ball's state.
  Ball()
  {
    position = new PVector(width/2, height/2);
    velocity = new PVector(random(-3,3),3); 
    radius = 15;
    colour   = color(214, 93, 69);
    rectx = 0;
    recty = 0;
    score = 0;
    w = 100;
  }
  
  // Draws the ball at its current position.
  void draw()
  {
    // score
  String message = "SCORE";
  fill(255,0,0);
  
  
  if(position.x  >=rectx && 
     position.x <= rectx +100 &&
     position.y >= recty &&
     position.y <= recty +50){
     
       score=score+1;
     }
  textSize(20);   
  text(message,270,30);
  text(score,350,30);
  
  
  
    
    
    
    
    noStroke();
    fill(colour);
    ellipse(position.x, position.y, radius * 2, radius * 2);
    
     if(score >= 2 && score <= 3){
      w=90;     
     }
     if(score >=4 && score <= 5){
       w = 80;
     }
     if(score >=6 && score <= 7){
       w = 70;
     }
     if(score >=8 && score <= 9){
       w = 60;
     }
     if(score >=10){
       fill(254, 244, 232);
       rect(mouseX,270,w,50);
     }
    
     
    
    
    
   
    rect(mouseX,270,w,50);
    
   
      
        
   if (position.y + radius>= 270 && position.x >= mouseX && position.x <= mouseX +w)
    {
      
      velocity.y = -1*velocity.y  ;
    
    }
      fill(0);
      rect(rectx,recty,100,50);
 
   
      
      
      
      
      
      
      
  if(position.x  >=rectx && 
     position.x  <= rectx +100 &&
     position.y >= recty &&
     position.y <= recty +50)
     {
       
  
  //position.y - radius <=  recty + 50 && 
   //   position.x <= rectx +100){
    //stop();
    //String message2 = "YOU WON";
    //textSize(50);
    //fill(0);
   //text(message2, width/2-100,height/2);
   rectx = random (0,300);
   recty = random (0,200);  


}
      
    
    
    
  }
  
  // Moves the ball according to its current velocity.
  void move()
  {
    position.x = position.x + velocity.x;
    position.y = position.y + velocity.y;
  
    if (position.x-radius < 0 && velocity.x < 0)
    {
      // Escaping to the left, start moving right.
      velocity.x = -1*velocity.x;
    } 
    else if (position.x+radius > width && velocity.x > 0)
    {
      // Escaping to the right, start moving left.
      velocity.x = -1*velocity.x;
    }
  
    if (position.y-radius < 0 && velocity.y < 0)
    {
      // Escaping upwards, start moving down.
      velocity.y = -1*velocity.y;
    } 
    else if (position.y+radius > height && velocity.y > 0)
    {
      //Escaping downwards, start moving up.
      stop();
      String message = "GAME OVER";
      fill(0,0,0);
      
      textSize(50);
      text(message,width/2-150,height/2);
      
    }
  }
}