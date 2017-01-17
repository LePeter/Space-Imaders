interface Playable{
  public final static int LAZER_SPEED = 30;
  //Tells you how many lives you have and what level your on
  String getStatus();
  //Tells you if you wo  //String getWinMessage();
  //Makes the object move
   void makeMove();
  //Acts when called
   void act();
  //Explodes at a certain condition    
  void explode();
  ///Moves when signaled
  void move();
  int getX();
  int getY();
  
  
}
