class Buttons{
  
  int Color1 = 100;
  int Color2 = 100;
  
  void display(){
  noStroke();
  
  //Change country left
  fill(Color1);
  stroke(0);
  rect(width/2-200,60,50,50,8);
  
  pushMatrix();
  fill(255);
  translate(width/2-190,85);
  rotate(radians(-45));
  noStroke();
  rect(0,0,30,6,5);
  rect(0,0,6,30,5);
  popMatrix();
  
  
  //Change country right
  fill(Color2);
  stroke(0);
  rect(width/2+150,60,50,50,8);
  
  pushMatrix();
  fill(255);
  translate(width/2+190,85);
  rotate(radians(-225));
  noStroke();
  rect(0,0,30,6,5);
  rect(0,0,6,30,5);
  popMatrix();
  
  //display scale factor
  /*
  noStroke();
  fill(60);
  rect(width-60,height/2-40,50,50,8);
  textAlign(CENTER);
  textSize(15);
  fill(255);
  text("SCALE",width-35,height/2-20);
  text(scaleFactor,width-35,height/2);
  */
  
  //height text
  fill(255);
  textSize(20);
  rect(20,120,1,350);
  textAlign(DOWN,LEFT);
  if(scaleFactor == 100){
  text("3",25,-300-30+height,25);
  text("2",25,-200-30+height,25);
  text("1",25,-100-30+height,25);
  } else if (scaleFactor == 50){
  text("6",25,-300-30+height,25);
  text("4",25,-200-30+height,25);
  text("2",25,-100-30+height,25);
  } else if (scaleFactor == 10){
  text("30",25,-300-30+height,25);
  text("20",25,-200-30+height,25);
  text("10",25,-100-30+height,25);
  }
  
  }
  
  void hover(){
      if(mouseX >= width/2-200 && mouseX <= width/2-150 && mouseY >=60 && mouseY <= 110) {
        Color1 = 150; } else { Color1 = 100;}
        
        if(mouseX >= width/2+150 && mouseX <= width/2+200 && mouseY >=60 && mouseY <= 110) {
        Color2 = 150; } else { Color2 = 100;}
  }
  
  void click(){
    if(mouseX >= width/2-200 && mouseX <= width/2-150 && mouseY >=60 && mouseY <= 110) {
        ChosenCountry--; }
    
    if(mouseX >= width/2+150 && mouseX <= width/2+200 && mouseY >=60 && mouseY <= 110) {
        ChosenCountry++; }
  }
}
