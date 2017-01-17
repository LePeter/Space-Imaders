import java.util.ArrayList;
import java.awt.Color;
public class RhombusEnemy extends Enemy implements Playable{
  
  //fields for reference
  private color theColor;

  private PImage rhombusIMG = loadImage("RhombusEnemySprite.png");
  
  public RhombusEnemy(color itsColor, int xCoord, int yCoord){
      xCordinate = xCoord;
      yCordinate = yCoord;
      image(rhombusIMG, (float)xCoord, (float)yCoord, 30, 30);

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
