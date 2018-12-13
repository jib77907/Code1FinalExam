/*
this sketch draws a grid to the canvas 
using two 2D arrays. 

create a third 2D array that will be used 
to store color values for the grid. in 
the setup, use a conditional statement 
to set color values to red or white, according 
to the pattern in the example image.
*/


int rows = 10;
int columns = 10;
float w, h;
float[][] posX = new float[rows][columns];
float[][] posY = new float[rows][columns];
int [][] col = new int[rows][columns];

void setup() {
  size(600, 600);
  w = width/rows;
  h = height/columns;
  for(int r = 0; r < posX.length; r++){
    for(int c = 0; c < posX[0].length; c++){
      posX[r][c] = c * w;
      posY[r][c] = r * h;
      
      col[r][c]= 255;
      
      if(posX[r][c] < 300 && posY[r][c] < 300){
       col[r][c] = color(255,0,0); 
      }
      if (posX[r][c] >= 300 && posY[r][c] >= 300){
        col[r][c] = color(255,0,0); 
      }
    }
  }
  
}

void draw() {
  for(int r = 0; r < posX.length; r++){
    for(int c = 0; c < posX[0].length; c++){
      fill(col[r][c]);
      rect(posX[r][c], posY[r][c], w, h);
    }
  }
}
