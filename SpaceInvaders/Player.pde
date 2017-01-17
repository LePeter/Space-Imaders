
import java.util.ArrayList;

class Player implements Playable, Laserable{
  private String name;
  private int lives;
  private int health = 1;
  private static final double SPEED = 10;
  private static final double LASER_SPEED = 40;
  private int xCoor,yCoor;
  private int Move = -1; //-1 == LEFT, 0 == STOP, 1 == RIGHT
  private double maxX = 650;
  private PImage img = loadImage("Ship.png");
  private ArrayList<Laser> lasers = new ArrayList<Laser>();
  
  Player(){
    //PImage img = loadImage("Ship.png");
    image(img, 300, 600);
    xCoor = 300;
    yCoor = 600;
    name = "Player";
    lives = 5;
    Move = 0;
  }
  
  Player(String n){
    //PImage img = loadImage("Ship.png");
    image(img, 300, 600);
    xCoor = 300;
    yCoor = 600;
    name = n;
    lives = 5;
    Move = 0;
  }
  
  String getStatus(){
    return name  + "\n" + lives;
  }
  String getWinMessage(){
    return "Congratulations you won!!!!";
  }

  void makeMove(){
    if(Move == -1){ 
        xCoor -= (int)SPEED;
        if(xCoor < 0){
          xCoor = 0;
        }
        PImage clr = loadImage("Clear.PNG");
        image(clr, (int)(getX() + SPEED), getY());
        img = loadImage("Ship.png");
        image(img,getX(), getY());
    }
    else if(Move == 0){
    }
    else if(Move == 1){
        xCoor += SPEED;
        if(xCoor > (int)maxX)
          xCoor = (int)maxX;  
        PImage clr = loadImage("Clear.PNG");
        image(clr, (int)(getX() - SPEED), getY());
        img = loadImage("Ship.png");
        image(img,getX(), getY());
    }
  }
  void act(){
     for (Laser l : lasers){
       l.move();
     }
     removeShots();
  }
  void explode(){
    health -= 1;
    if(health <= 0){
      PImage im = loadImage("Explode.PNG");
      image(im, getX(), getY());
      lives -= 1;
    }
  }
  void move(){
    
  }
  void setMove(int num){
    Move = num;
  }
  int getY(){
    return yCoor;
  }
  
  int getX(){
    return xCoor;
  }
  void shoot(){
    //Add shot delay
      lasers.add(new Laser(xCoor + 20, yCoor - 25, Color.GREEN, LASER_SPEED));
    }
  int getShots(){
    return lasers.size();
  }
  
  void removeShots(){
    if(lasers.size() > 0 && lasers.get(0).getYVal() < 0)
      lasers.remove(0);
  }
  
  int getLives(){
    return lives;
  }


}
