abstract class Enemy implements Playable, Laserable {
  private int health = 1;
  private double START_SPEED = 30;
  private double LASER_SPEED = 40;
  protected int xCordinate;
  protected int yCordinate;
  PImage explodeIMG = loadImage("Explode.PNG");
  void move() {
  }
  void explode() {
    image(explodeIMG, getX(), getY(), 30, 30);
  }
  void act() {
  }
  void shoot() {
  }
  String getStatus() {
    return "";
  }
  void makeMove() {
  }
  int getX() {
    return xCordinate;
  }
  int getY() {
    return yCordinate;
  }
}

