import java.util.ArrayList;
import java.awt.Color;
public class SquareEnemy extends Enemy implements Playable{
  
  //fields for reference
  private color theColor;

  private PImage squareIMG = loadImage("SquareEnemySprite.png");
  
  public SquareEnemy(color itsColor, int xCoord, int yCoord){
      xCordinate = xCoord;
      yCordinate = yCoord;
      image(squareIMG, (float)xCoord, (float)yCoord, 30, 30);

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
