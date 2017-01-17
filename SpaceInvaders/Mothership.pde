import java.util.ArrayList;

public class Mothership extends Enemy implements Playable{
  
   private int DELAY_BETWEEN_VISIBLE = (int)(Math.random() * 20) + 10;  //ship appears randomly from 10-15 seconds
   private PImage mothershipIMG = loadImage("MothershipSprite.png");
   private PImage clearIMG = loadImage("Clear.PNG");
   private float startTime, currTime;  //sets time
   private int xCoord =290;  //hides behind screen then gradually moves to left or right
   private int itsDirection;
   private float speed = 0.5;  //constant speed of 1
   private int getRandomStartPosition;  //determines where to start
   private boolean isVisble;
   
   public Mothership(){
      smooth();
   }
   

   
   
   //determines if the mothership can show up move or stays hidden  MAY NEED TO CHANGE THIS

   //moves the mothership
   public void move(){
    
       //while it's still in boundaries, move
       //while(xCoord < 750){
          image(mothershipIMG,xCoord, (float)399, 50, 50);
          //xCoord += speed;
       //}
       
       /*
       if(xCoord <= -50 || xCoord >= 750){
          image(clearIMG,(float)xCoord,(float)50, 100, 50);
          isVisble = false;
       }
       //moves while it doesnt touch edges
        do{
           xCoord += speed * itsDirection; //moves certain direction and speed
           image(clearIMG,(float)xCoord,(float)50, 100, 50);
           image(mothershipIMG,xCoord, (float)100, 50, 50);
        }while(xCoord > -50 || xCoord < 750);
        
        */
   }
}


