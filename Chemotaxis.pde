

Walker[] carrie;
void setup()
{
  size(500,500);
  //  bob = new Walker();
    carrie = new Walker[100];
    for(int a = 0; a < carrie.length; a++){
      carrie[a] = new Walker();
  }
}
void draw()
{
  background(0);
  fill(247, 231, 137);
  rect(470,470, 50,50);
  rect(10,10, 50,50);
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
      f = f + (int)(Math.random()*9)-5;
    }
    else{
      f = f + (int)(Math.random()*9)-3;
    }
    if(mouseY > g){
      g = g + (int)(Math.random()*9)-5;
    }
    else{
      g = g + (int)(Math.random()*9)-3;
    }
    if (g >=470){
            g = 470;
    }
        if (f >=470){
            f = 470;
    }
    if (g <=20){
            g = 20;
    }
        if (f <=20){
            f = 20;
        }
  }
  void show()
  {
      //color
   int ran1 = (int)(Math.random()*240)+130;
   int ran2 = (int)(Math.random()*240)+130;
   int ran3 = (int)(Math.random()*240)+130;
   fill(ran1,ran2,ran3);
   ellipse(f,g, 10, 20); 
   
}
  }
