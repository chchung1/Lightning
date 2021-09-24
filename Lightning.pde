int x = 200;
int y = 250; 
int xi = x;
int yi = y;

int r = 195;
int g = 255;
int b = 127;

int i;

void setup()
{
  size(400,400);
  background(0);
  
}
void draw()
{
 
  if (xi < 300 && yi > 100){
    stroke(r,g,b);
    strokeWeight(6);
    xi = x + (int)(Math.random()*11)-5;
    yi = y - (int)(Math.random()*11)-5;
    line(x, y, xi, yi);
    x = xi;
    y = yi;
}

  noStroke();
  fill(255,255,255);
  rect(160,250,80,140);
  triangle(160,350,160,390,120,390);
  
  fill(r,g,b);
  
}

void mousePressed()
{
  if(i <= 10){
  r = (int)(Math.random()*129)+127;
  g = (int)(Math.random()*129)+127;
  b = (int)(Math.random()*129)+127;
  
  ellipse(xi,yi,15,15);
  fill(0);
  ellipse(xi,yi-1,3,3);
  
  fill(r,g,b);
  x = (int)(Math.random()*61)+170;
  y = 250; 

  xi = x;
  yi = y;

  i++;
  }
  else{
  fill(r,g,b);
  ellipse(xi,yi,15,15);
  fill(0);
  ellipse(xi,yi-1,3,3);
  
  fill(255,255,255);
  text("many snakes in da boot oh no",40,60);
  }
  
}

