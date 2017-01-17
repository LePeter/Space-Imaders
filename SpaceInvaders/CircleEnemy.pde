import java.util.ArrayList;
import java.awt.Color;
public class CircleEnemy extends Enemy implements Playable{
  
  //fields for reference
  private color theColor;

  private PImage circleIMG = loadImage("CircleEnemySprite.png");
  
  public CircleEnemy(color itsColor, int xCoord, int yCoord){
      xCordinate = xCoord;
      yCordinate = yCoord;
      image(circleIMG, (float)xCoord, (float)yCoord, 30, 30);

  }
  
  void makeMove(){
  
  }
  int getX(){
    return xCordinate;
  }
  int getY(){
    return yCordinate;
  }

   
}
