class CA{
Vec3D loc;
int x;
int y;
int type=0;
int futType=0;


CA(Vec3D _loc, int _x, int _y)
{
loc=_loc;
x= _x;
y= _y;
float rnd= random(100);
if (rnd<50)
{type=1;
}
}

void run()
{
  display();
  evalN();
}

void updateType(){
  type=futType;
}



void evalN(){
  int count=0;
  if (grid[(x+cols-1)%cols][(y+rows-1)%rows].type==1)
  {
    count++;
  }
   if (grid[(x+cols)%cols][(y+rows-1)%rows].type==1)
  {
    count++;
  }
   
   if (grid[(x+cols+1)%cols][(y+rows-1)%rows].type==1)
  {
    count++;
  }
   if (grid[(x+cols-1)%cols][(y+rows)%rows].type==1)
  {
    count++;
  }
  if (grid[(x+cols+1)%cols][(y+rows)%rows].type==1)
  {
    count++;
  }
   if (grid[(x+cols-1)%cols][(y+rows+1)%rows].type==1)
  {
    count++;
  }
   if (grid[(x+cols)%cols][(y+rows+1)%rows].type==1)
  {
    count++;
  }
  if (grid[(x+cols+1)%cols][(y+rows+1)%rows].type==1)
  {
    count++;
  }
    
    
    //rules of game of life
    if (type==1 && count <2)
    {futType=0;
    }
     
    if (type==1 && count <=3 && count>=2)
    {futType=1;
    }
    
     
    if (type==1 && count >3)
    {futType=0;
    }
     
    if (type==0 && count ==3)
    {futType=1;
    }
} 


void display(){
  if (type==1){
  stroke(0,255,0);
  strokeWeight(5);
  point(loc.x,loc.y);
  }
}
}
