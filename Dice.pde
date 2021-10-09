void setup()
{
  noLoop();
  size(1000, 1000);
}
void draw()
{
  //your code here
  background(255);
  int sum = 0;
  for(int y = 1; y <= 950; y=y+25){
    for(int x = 1; x <= 1000; x=x+25){
      Die bob = new Die(x,y);
      bob.show();
      sum += bob.nums; 
    }
  }
  fill(0);
  text("The sum is "+ sum, 450, 975);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int nums;
  int myX, myY;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    //your code here
     nums = (int)(Math.random()*6)+1;
   }
  void show()
  {
    //your code here
    stroke(255);
    int random = (int)(Math.random()*4);
    if (random == 1)
      fill(0);
     else if (random == 0)
       fill(#8E8C8C);
     else if (random == 3)
       fill(#FF0000);
      else
        fill(#0016CE);
    rect(myX, myY, 25, 25);
    fill(#03FF11);
    if(nums == 1){
      ellipse(myX+13, myY+13, 5, 5);
    } 
    else if(nums == 2){
      ellipse(myX+7, myY+7, 5, 5);
      ellipse(myX+17, myY+17, 5, 5);
    } 
    else if(nums == 3){
      ellipse(myX+5, myY+5, 5, 5);
      ellipse(myX+12, myY+12, 5, 5);
      ellipse(myX+19, myY+19, 5, 5);
    } 
    else if(nums == 4){
      ellipse(myX+5, myY+5, 5, 5);
      ellipse(myX+20, myY+20, 5, 5);
      ellipse(myX+5, myY+20, 5, 5);
      ellipse(myX+20, myY+5, 5, 5);
    } 
    else if(nums == 5){
      ellipse(myX+5, myY+5, 5, 5);
      ellipse(myX+20, myY+20, 5, 5);
      ellipse(myX+5, myY+20, 5, 5);
      ellipse(myX+20, myY+5, 5, 5);
      ellipse(myX+12, myY+12, 5, 5);
    } 
    else if(nums == 6){
      ellipse(myX+5, myY+5, 5, 5);
      ellipse(myX+5, myY+13, 5, 5);
      ellipse(myX+5, myY+20, 5, 5);
      ellipse(myX+20, myY+20, 5, 5);
      ellipse(myX+20, myY+13, 5, 5);
      ellipse(myX+20, myY+5, 5, 5);
    }
  }
}
