import java.util.ArrayList;
import java.util.*;
import java.awt.Color;
private int coorX;
private int coorY;
public class Strategy{
  
//test
private float startTime, currTime;  //sets time  
private final int  DELAY_BETWEEN_VISIBLE = 2 ;
Mothership mo;
private PImage mothershipIMG = loadImage("MothershipSprite.png");


Enemy[][] arrOfAliens = new Enemy[5][10]; //sets to 5 rows and 10 columns of alien arraylist
   public Strategy(){
     
        //creates a new mothership
        startTime =  millis();  //initializes the start time upon object creation
        mo = new Mothership();
     
     
     
     
     
     
     
     
       //loops through the alien row and place a row of 10 aliens
       for(int r = 0; r < arrOfAliens.length; r++){
          //sets an array of 10 aliens for each row
          for(int c = 0; c < arrOfAliens[0].length; c++){
             color randomColor;
             int getRandomColor = (int)(Math.random() * 4) + 1;  //gets  random color for ship
             //gets a randomly generated color for the alien ship
             switch(getRandomColor){
                  case 1: randomColor = color(255,0,0); break;  //red
                  case 2: randomColor = color(0,0,255); break; //blue
                  case 3: randomColor = color(0,255,0); break;  //lime
                  case 4: randomColor = color(255,255,0); break;  //yellow
                  default: randomColor = color(255,0,0); break;  //red default
             }
             
             int getsRandomShip = (int)(Math.random() * 4) + 1;  //gets  random ship

             //switches to a random alien generated randomly
             switch(getsRandomShip){
                   case 1:
                        arrOfAliens[r][c] = new TriangleEnemy(randomColor, (c * 50)+100, r * 40 + 150);
                        coorX = arrOfAliens[r][c].getX();
                        coorY =   arrOfAliens[r][c].getY();
                        break;
                   case 2: 
                        arrOfAliens[r][c] = new CircleEnemy(randomColor, c * 50 +100, r * 40 + 150); 
                        coorX =  arrOfAliens[r][c].getX();
                        coorY =   arrOfAliens[r][c].getY();
                        break;
                   case 3: 
                        arrOfAliens[r][c] = new SquareEnemy(randomColor, c * 50 +100, r * 40 + 150); 
                        
                        coorX =   arrOfAliens[r][c].getX();
                        coorY =   arrOfAliens[r][c].getY();
                        break;
                   case 4: 
                        arrOfAliens[r][c] = new RhombusEnemy(randomColor, c * 50 +100, r * 40 + 150); 
                        coorX =   arrOfAliens[r][c].getX();
                        coorY =   arrOfAliens[r][c].getY();
                        break;
                   default:
                        arrOfAliens[r][c] = new TriangleEnemy(randomColor, c * 50 +100, r * 40 + 150); 
                        coorX =   arrOfAliens[r][c].getX();
                        coorY =   arrOfAliens[r][c].getY();
                        break;
              }
              
             
          }
       }
      
   }
   
   
   public void reDraw(){
      int currTime = millis();
      //for every amount of elapsed time
      if(currTime % DELAY_BETWEEN_VISIBLE == 0){
        mo.move();
      }
}

