class Histogram {
 Table table;
 ArrayList<Data> dataListe = new ArrayList<Data>();
 
 String[] Countries = {"Denmark","Australia","Brazil","Canada","Finland","France","Germany","India","Italy","Mexico","Netherlands","Norway","Portugal","Russia","Sweden"};
 
  
  void loadData(){
    
    textFont(Crack);
    
   table = loadTable("HomicideRates.csv","header"); 
   
   for (TableRow o : table.rows()){
     String country = o.getString("Entity");
     int year = o.getInt("Year");
     float rate = o.getFloat("Homicide");
     dataListe.add(new Data(year, rate, country));  
   }
  }
  
  void display(){
    stroke(0);
    clear();
        background(80);
    int barWidth = 30;
    int x = barWidth;
    boolean hover = false;
    if(ChosenCountry > Countries.length-1){ ChosenCountry = 0;}
    if(ChosenCountry <= -1){ChosenCountry = Countries.length-1;}

//wildly bad written but functioning image changer
imageMode(CENTER);
tint(255,80);
if (ChosenCountry == 0){
  image(Denmark,width/2,height/2+30,300,300);
} else if (ChosenCountry == 1){
  image(Australia,width/2,height/2+30,300,300);
} else if (ChosenCountry == 2){
  image(Brazil,width/2,height/2+30,300,300);
} else if (ChosenCountry == 3){
  image(Canada,width/2,height/2+30,300,300);
} else if (ChosenCountry == 4){
  image(Finland,width/2,height/2+30,300,300);
} else if (ChosenCountry == 5){
  image(France,width/2,height/2+30,300,300);
} else if (ChosenCountry == 6){
  image(Germany,width/2,height/2+30,300,300);
} else if (ChosenCountry == 7){
  image(India,width/2,height/2+30,300,300);
} else if (ChosenCountry == 8){
  image(Italy,width/2,height/2+30,300,300);
} else if (ChosenCountry == 9){
  image(Mexico,width/2,height/2+30,300,300);
} else if (ChosenCountry == 10){
  image(Netherlands,width/2,height/2+30,300,300);
} else if (ChosenCountry == 11){
  image(Norway,width/2,height/2+30,300,300);
} else if (ChosenCountry == 12){
  image(Portugal,width/2,height/2+30,300,300);
} else if (ChosenCountry == 13){
  image(Russia,width/2,height/2+30,300,300);
} else if (ChosenCountry == 14){
  image(Sweden,width/2,height/2+30,300,300);
}

    //auto scaling
    for (Data d : dataListe){
      if(d.country.equals(Countries[ChosenCountry])&&d.rate > 6){scaleFactor=10; break;} else if (d.country.equals(Countries[ChosenCountry])&&d.rate > 4){scaleFactor=50; break;} else {scaleFactor=100;}
    }
    
    
    for (Data data : dataListe){
     if(data.country.equals(Countries[ChosenCountry])){
       x = x + barWidth;
       
       //grid boxes
       noFill();
       stroke(60);
       rect(x,120,barWidth,350);
       noStroke();
       fill(80);
       rect(barWidth*2,110,barWidth*29,11);
       
       
       //Hover scale 100
       if(mouseX >= x && mouseX <= x+barWidth && mouseY <= height-30 && mouseY >= (height-data.rate*scaleFactor)-30 && scaleFactor==100){
        fill (255,0,0,200);
       hover=true;
       } else if(scaleFactor==100){ 
       fill(255,0,0,100);
       hover=false;
       }
       
       //Hover scale 50
       if(mouseX >= x && mouseX <= x+barWidth && mouseY <= height-30 && mouseY >= (height-data.rate*scaleFactor)-30 && scaleFactor==50){
        fill (255,0,0,225);
       hover=true;
       } else if(scaleFactor==50){ 
       fill(255,0,0,125);
       hover=false;
       }
       
       //Hover scale 10
       if(mouseX >= x && mouseX <= x+barWidth && mouseY <= height-30 && mouseY >= (height-data.rate*scaleFactor)-30 && scaleFactor==10){
        fill (255,0,0,250);
       hover=true;
       } else if(scaleFactor==10){ 
       fill(255,0,0,150);
       hover=false;
       }
       
       //actual boxes
       stroke(0);
       rect(x,height-30,barWidth,-data.rate*scaleFactor);
       fill(255);
       
       //hover function
       if(hover){
       pushMatrix();
       textAlign(RIGHT,CENTER);
       translate(x+barWidth/2,height-40);
       rotate(radians(90));
       textSize(15);
       text(data.rate,0,0);
       popMatrix();
     }
       
       //year text
       textAlign(CENTER);
       textSize(13);
       text(data.year,x+barWidth/2,height-10);
       
     }
     
    }
    //Top Country Text Draw
    fill(255);
    textAlign(CENTER);
    textSize(10);
    textFont(Urban);
    text(Countries[ChosenCountry],width/2,100);
    textFont(Crack);
    
    textSize(25);
    text("HOMICIDE RATE PER 100.000 PEOPLE",width/2,40);
    
  }
}
