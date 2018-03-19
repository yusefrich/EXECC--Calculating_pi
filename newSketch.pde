float r = 200;

//variable for the total of drawn point and in the circle drawn points
int total = 0;
int circle = 0;

double record_pi=0;

void setup(){
  //setting up the canvas
  size (400,400); 
 
 //drawing the inicial background
  //generate the background with a black color
  background (0);
  //translating the center of the canvas
  translate(width/2, height/2);
  
  //alpha of the strokes
  stroke(225);
  strokeWeight(4);
  noFill();
  
  //drawing ellipse and rectangle
  ellipse(0,0,r*2,r*2);
  rectMode(CENTER);
  rect(0,0,r*2,r*2);
}

void draw(){
  //translating the center of the canvas
  translate(width/2, height/2);


  for(int i = 0; i<20000; i++){
  //drawing random points in the screen
  float pointX= random(-r, r);
  float pointY = random(-r,r);
  total++;
  
  
  //calculating distance
  double distanceFromCenter = (double)pointX * (double)pointX + (double)pointY * (double)pointY;
  
  //drawing point based on distance
  if(distanceFromCenter < (double)r * (double)r){
    stroke(100,255,0,100); 
    circle ++;
  }else{
    stroke(0,100,255,100);
  }
  strokeWeight(1);
  
  point (pointX,pointY);
  //calculating the value of pi
  double pi = (double)4 * ((double)circle  / (double)total);
  double recordDiff = Math.abs(Math.PI - record_pi);
  double diff = Math.abs(Math.PI - pi);
  if(diff < recordDiff){
   recordDiff = diff;
   record_pi = pi;
   println(record_pi); 

  }

  }
}
