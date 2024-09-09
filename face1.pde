color black=#FFFFFF;
color blue =#18EDE1;
color red  =#c1121f;
color beige=#fdf0d5;
void setup(){
  size(800,600);
  
  
}

void draw(){
  background(beige);
 face(200,100,1); //x,y
 face(500,200,0.5);
}

void face(int x,int y,float s){
  pushMatrix();
  translate(x,y); 
  scale(s);
  rotate(PI/2);
  
  skin();
  hair();
  eye(100,200);//left
  eye(300,200);//right 
  //eye(200,100);//center eye
  mouth();
  popMatrix();
}

void skin(){
  fill(blue);
  stroke(black);
  strokeWeight(3);
  rect(0,0,400,400);
}

void hair(){
  strokeWeight(25);
  int x=0;
  while (x<=400){
   line(x,-50,x,50); 
    x=x+50;
  }
  //put stroke weight back to normal
  strokeWeight(3);
}

void eye(int x, int y){
  fill(beige);
  ellipse(x,y,100,50);//white part
  fill(red);
  circle(x,y,50);     //pupil
  fill(black);
  circle(x,y,25);     //center
}

void mouth(){
  fill(beige);
  rect(100,250,200,100);//mouth 
  line(100,300,300,300);//teeth
  line(150,250,150,350);
  line(200,250,200,350);
  line(250,250,250,350);
}
