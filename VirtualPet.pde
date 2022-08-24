void setup(){
  size(1000,1000);
}
void draw(){
   int lgR = Math.min(100 + mouseX/15, 100+85);
   int lgG = Math.min(170 + mouseX/15, 170+85);
   int lgB = Math.min(80 + mouseX/15, 80+85);
   //SPIKES
   stroke(56,118,29); //dark green
   fill(56,118,29); //dark green
   triangle(500, 285, 450, 360, 550, 360);
   triangle(500-75, 285+10, 450-75, 360+10, 550-75, 360+10);
   triangle(500-150, 285+25, 450-150, 360+25, 550-150, 360+25);
   triangle(500+75, 285+10, 450+75, 360+10, 550+75, 360+10);
   
  
   //BODY
   stroke(lgR,lgG,lgB); //light green
   fill(lgR,lgG,lgB); //light green
   ellipse(500, 400, 450, 150);
  
   //STICK
   strokeWeight(50);
   stroke(100,63,24); //brown
   line(250, 500, 1000, 500);
   line(250, 500, 0, 600);
   line(250, 500, 0, 630);
   strokeWeight(2);
   stroke(lgR,lgG,lgB); //light green
   fill(lgR,lgG,lgB); //light green
   rotate(radians(-10));
   ellipse(280, 450, 250, 100);
   rotate(radians(10));
    
   //TAIL
   for (int i = 0; i < 1000; i++) {
     stroke(10+(90.0/1000)*i + lgR-100, 70+(100.0/1000)*i + lgG-170, 0+(95.0/1000)*i + lgB-80);
     strokeWeight(i/20);
     float t = radians(i);
     float x = t * cos(t)*i/70;
     float y = t * sin(t)*i/70;
     point(x+300, y+650);
   }
   
   //HEAD
   strokeWeight(5);
   stroke(lgR,lgG,lgB); //light green
   fill(lgR,lgG,lgB); //light green
   ellipse(750, 370, 200, 150);   
   ellipse(690, 370, 100, 175);
   ellipse(710, 370, 100, 160);
   
   //ARMS
   strokeWeight(25);
   stroke(56,118,29); //dark green
   fill(56,118,29); //dark green
     //FRONT
   line(550, 425, 650, 400);
   line(550, 425, 650, 500);
     //BACK
   line(400, 450, 400, 400);
   line(400, 450, 425, 500);

   
   //EYE
   strokeWeight(2);
   stroke(0, 0, 0); //black
   fill(255, 255, 255); //white
   ellipse(800, 350, 35, 35);  
   
   stroke(0, 0, 0); //black
   fill(0, 0, 0); //black
   ellipse(810, 350, 10, 10);  
   
   //MOUTH
   strokeWeight(2);
   stroke(0, 0, 0); //black
   line(848, 385, 800, 390);
   
   
  
}
