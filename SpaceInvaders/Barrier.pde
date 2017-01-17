class Barrier{
  private int xLoc;
  private int yLoc;
  
  public Barrier(int xL, int yL){
     xLoc = xL;
     yLoc = yL;
     int[][] locs = new int[50][50];
     for(int r = 0; r < 50; r++){
       for(int c = 0; c < 50; c++){
         fill(Color.GREEN.getRGB());
         rect(xLoc,yLoc,1,1);
         xLoc++;
         yLoc++;
       }
     }
  }
  
  
  
  
  
  
}
