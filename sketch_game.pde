import toxi.processing.*;
import peasy.*;
import toxi.geom.*;


PeasyCam cam;

int cols=100;
int rows =100;

CA grid[][]=new CA[cols][rows];

void setup()
{
  size(800,600,P3D);
  cam=new PeasyCam(this,100);
  
  for(int i=0; i<cols; i++){
    for(int j=0; j<rows; j++){
      
      Vec3D ptloc=new Vec3D(i * 10, j * 10, 0);
      grid[i][j]=new CA(ptloc, i, j); //defining a  vector with the loaction of its point
    }
  }
    
}

void draw(){
  background(0);
  
  stroke(255); //white stroke
  fill(255,50); //filled white with 50 % transparency
  //rect(0,0,600,600); 
  
  
  for(int i=0; i<cols; i++){
    for(int j=0; j<rows; j++){
      grid[i][j].run();
    }
  }
  for(int i=0; i<cols; i++){
    for(int j=0; j<rows; j++){
      grid[i][j].updateType ();
    }
  }
}

