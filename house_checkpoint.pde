//pallette
color green = #99d98c;
color blue  = #90e0ef;
color red   = #c1121f;

float sunY;
float sunY1;
boolean day;
void setup(){
  size(1000,1000);
  sunY=150;
  sunY1=-50;
  day=true;
}

void draw(){
  if( day==true){
  background(255);//background
  }
  
  if( day==false){
  background(0);//background
  }
  
  
  
 fill(255,0,255);
 stroke(255);
 strokeWeight(5);
 square(200,200,400); //base
 triangle(200,200,600,200,400,100);
 fill(100);
 square(300,300,100);//window
 square(300,300,50);
 square(350,350,50);
 square(350,300,50);
 square(300,350,50);
 
 square(450,300,100);//window
 square(450,300,50);
 square(500,350,50);
 square(500,300,50);
 square(450,350,50);
 
 rect(400,500,50,100);//door
 
 //moon
 fill(255);
 circle(800,sunY1,50);
if (day==false){
 sunY1= sunY1+3;
 if(sunY1>height/2+50){
   sunY1=-50;
   day=true;
 }
 }
 //sun
 fill(#DDFF03);
 circle(800,sunY,50);
 if (day==true){
 sunY= sunY+3;
 if(sunY>height/2+50){
   sunY=-50;
   day=false;
 }
 }
 //grass
  fill(0,255,0);
  rect(0,height/2,1000,500);
  
}
