Particle[]  parts;
void setup(){
  size(500,500);
  parts = new Particle[500];
    parts[0] = new Oddball();
    parts[1] = new Oddball();
    parts[2] = new Oddball();
    parts[3] = new Oddball();
    parts[4] = new Oddball();
    parts[5] = new Oddball();
    parts[6] = new Oddball();
    parts[7] = new Oddball();
    parts[8] = new Oddball();
    parts[9] = new Oddball();
  for(int i = 10; i < parts.length; i++){
    parts[i] = new Particle();
  }
}

void draw(){
  background(0);
  for(int i = 0; i < parts.length; i++){
    parts[i].move();
    parts[i].show();
  }
}

class Particle{ 
  double myX,myY, mySpeed, myAngle;
  int myColor;
  Particle(){
    myX = 250;
    myY = 250;
    myAngle = Math.random()*2*PI;
    mySpeed = 3;
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  
  void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  
  void show(){
    fill(myColor);
    rect((int) myX, (int)myY, 10,10);
  }
}

  class Oddball extends Particle{
    Oddball(){
    myX = 250;
    myY = 250;
    myAngle = Math.random()*2*PI;
    mySpeed = 4;
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  
  void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  
  void show(){
   fill(255, 255, 255);
   rect((int)myX, (int)myY, 50,50);
  }
}
