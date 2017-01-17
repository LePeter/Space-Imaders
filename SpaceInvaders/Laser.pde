import java.awt.Color;
int timer = second();
class Laser{
  private int xVal,yVal;
  private double s;
  private Color laserColor;
  private int t = second();
  
  Laser(int xCoor, int yCoor,Color c, double speed){
    fill(c.getRGB());
    rect(xCoor,yCoor,10,20);
    xVal = xCoor;
    yVal = yCoor;
    s = speed;
    laserColor = c;
    move();
  }
  
  int getYVal(){
    return yVal;      
  }
  
  void move(){
   fill(0);
    if(laserColor.equals(Color.GREEN)){
      yVal -= (int)s;
      rect(xVal,yVal + (int)s,10,20);
    }
    else{
      yVal += (int)s;
      rect(xVal,yVal - (int)s,10,20);
    }
     fill(laserColor.getRGB());
     rect(xVal,yVal,10,20);   
  }
  

  
  void disappear(){
    fill(0);
    rect(xVal,yVal,10,20);
  }
  
 }
