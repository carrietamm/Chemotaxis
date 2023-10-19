

Walker[] carrie;
void setup()
{
  size(500,500);
  //  bob = new Walker();
    carrie = new Walker[10];
    for(int a = 0; a < carrie.length; a++){
      carrie[a] = new Walker();
  }
}
void draw()
{
  background(0);
    for(int a = 0; a < carrie.length; a++){
    carrie[a].show();
    carrie[a].walk();
    }
  }
class Walker
{
  int f,g;
  Walker()
  {
    f = g = 250;
  }
  void walk()
  {
    if(mouseX > f){
      f = f + (int)(Math.random()*10)-5;
    }
    else{
      f = f + (int)(Math.random()*10)-3;
    }
    if(mouseY > g){
      g = g + (int)(Math.random()*10)-5;
    }
    else{
      g = g + (int)(Math.random()*10)-3;
    }
  }
  void show()
  {
      //color
   int ran1 = (int)(Math.random()*240)+130;
   int ran2 = (int)(Math.random()*240)+130;
   int ran3 = (int)(Math.random()*240)+130;
   fill(ran1,ran2,ran3);
   ellipse(f,g, 20, 20); 
   
}
  }
