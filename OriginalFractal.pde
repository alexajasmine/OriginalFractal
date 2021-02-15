public void setup(){
  size(600, 600); 
}
public void draw() {
  background(0); 
  myFractal(300, 300, 500, 200); 
}
public void myFractal(int x, int y, int wid, int hei) {
  ellipse(x, y, wid, hei); 
  if(wid > 10) {
    fill((int)(Math.random()*150),(int)(Math.random()*100),(int)(Math.random()*255));
    myFractal(x-wid/2, y, wid/2, hei/2); 
    myFractal(x+wid/2, y, wid/2, hei/2); 
    myFractal(x, y+wid/2, wid/2, hei/2); 
    myFractal(x, y-wid/2, wid/2, hei/2); 
  }
}
