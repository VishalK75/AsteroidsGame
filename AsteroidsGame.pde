Spaceship sharp = new Spaceship();
Star[] mochi = new Star[200];
ArrayList<Asteroids> flame = new ArrayList<Asteroids>();
ArrayList<Bullet> silver= new ArrayList<Bullet>();
public void setup()
{
  size(700,700);
  background(0);
  for(int i = 0; i < mochi.length; i++){
    mochi[i] = new Star();
  }
  for (int j = 0; j < 25; j++) {
      flame.add(new Asteroids());
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
  for (int i = 0; i < flame.size(); i++)
  {
   flame.get(i).show();
   flame.get(i).move();
   if (dist(flame.get(i).getX(), flame.get(i).getY(), sharp.getX(), sharp.getY()) < 25)
    {
      flame.remove(i);
    }
    for(int j = 0; j < silver.size(); j++){
      if (dist(flame.get(i).getX(), flame.get(i).getY(), silver.get(j).getX(), silver.get(j).getY()) < 20)
      {
        flame.remove(i);
        silver.remove(j);
        break;
      }
    }
  }
  for(int j = 0; j < silver.size(); j++){
    silver.get(j).show();
    silver.get(j).move();
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
  if(key == ' '){
    silver.add(new Bullet(sharp));
  }
}
