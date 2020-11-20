Spaceship sharp = new Spaceship();
Star[] mochi = new Star[200];
public void setup() 
{
  size(400,400);
  background(0);
  for(int i = 0; i < mochi.length; i++){
    mochi[i] = new Star();
  }
}

public void draw() 
{
  background(0);
  sharp.show();
  sharp.move();
  for(int i = 0; i < mochi.length; i++){
    mochi[i].show();
  }
}

public void keyPressed(){
  if (key == 'h'){
    sharp.setXspeed(0);
    sharp.setYspeed(0);
    sharp.myCenterX = (int)(Math.random()*350);
    sharp.myCenterY = (int)(Math.random()*350);
  }
  if (key == 'w'){
    sharp.accelerate(0.05);
  }
  if (key == 's'){
    sharp.accelerate(-0.05);
  }
  if (key == 'a'){
    sharp.turn(-8);
  }
  if (key == 'd'){
    sharp.turn(8);
  }
}
