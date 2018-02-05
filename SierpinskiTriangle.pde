public void setup()
{
  size(500, 500);
}
public void draw()
{
  background(0);
  stroke(255);
  for(int i = 0; i < 500; i+=90){
    sierpinski(10,500,500);
  }
  
}
public void mouseDragged()//optional
{
}
public void sierpinski(int x, int y, int len) 
{
  if (len<=20) {
    triangle(x, y, x+len/2, y-len, x+len, y);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}