import java.util.ArrayList;
import java.awt.Color;
public class TriangleEnemy extends Enemy implements Playable{
  
  //fields for reference
  private color theColor;

  private PImage triangleIMG = loadImage("TriangleEnemySprite.png");
  
  public TriangleEnemy(color itsColor, int xCoord, int yCoord){
      xCordinate = xCoord;
      yCordinate = yCoord;
      image(triangleIMG, (float)xCoord, (float)yCoord, 30, 30);

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
}
