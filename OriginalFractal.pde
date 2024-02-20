  public void setup(){
    size(500, 500);
    frameRate(60);
  }

  int i = 0;
  
  public void draw(){
    background(0);
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    if(i >= 150){
      i = 0;
      }else{
        i++;
      }
    myFractal(250,250,480);
}

  public void myFractal(int x, int y, int siz) {
    rect(x,y,siz,siz);
    if(siz > 10){
      myFractal(x-siz/2, y+siz+i, siz/2);
      myFractal(x+siz/2, y-siz-i, siz/2);
      myFractal(x-siz-i, y+siz/2, siz/2);
      myFractal(x+siz+i, y-siz/2, siz/2);
    }
  }
