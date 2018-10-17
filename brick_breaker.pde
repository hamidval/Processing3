Ball[] balls;    // Declaration of a ball object fr
float rectx;
float recty;
int a = 1;


void setup()
{
  size(400, 300);
  balls = new Ball[a];
  for( int i=0; i < balls.length; i = i+1)
  {
    balls[i] = new Ball();
  }

}

void draw()
{
  background(254, 244, 232);
   for (int i=0; i < balls.length; i=i+1)
  {
    balls[i].draw();
    balls[i].move();

  if ( frameCount/60 >= 10)
  {
    a=2;
  }

}





}
