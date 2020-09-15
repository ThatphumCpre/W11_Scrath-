int positionX, count;  //set as grobal variable 

void setup() {  
  size(500, 500);    
  strokeWeight(3);
  positionX = width;  //set default point 
  count = 0;   //set default counter values 
} 

void draw() { 
  background(40);   //draw gray background
  ellipse(positionX, 350, 100, 100);  //draw every time in positionX that change 
  if ( keyPressed ) {  //if keypress 
    if (key==' ') {    // space bar 
      positionX = width;   //set starter position 
      count = 30;      //counter variable 
    }
  } else if (count != 0) {  //if counter isn't  end of values
    count -= 1;   //decrease 
    positionX -= 13;   //move position 
  }
}
