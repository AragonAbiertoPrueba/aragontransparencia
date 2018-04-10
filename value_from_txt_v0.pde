 int[] data;
 PImage img00, img01, img02, img03, img04, img05, img06, img07, img08, img09;
 PImage img10, img11, img12, img13, img14, img15, img16, img17, img18, img19;
 PImage img20, img21, img22, img23, img24, img25, img26, img27, img28, img29;
 PImage img30, img31, img32, img33, img34, img35, img36, img37, img38, img39;
 PImage img40, img41, img42, img43, img44, img45, img46, img47, img48, img49;
 PImage img66;
 
 int selector;
 
 void setup() {
   size(256, 455);
   background(255);
   img00 = loadImage("00.png");
   img01 = loadImage("01.png");  
   img02 = loadImage("02.png");     
   img03 = loadImage("03.png");    
   img04 = loadImage("04.png");      
   img05 = loadImage("05.png");     
   img06 = loadImage("06.png");  
   img07 = loadImage("07.png");     
   img08 = loadImage("08.png");    
   img09 = loadImage("09.png"); 
   
   img10 = loadImage("10.png"); 
   img11 = loadImage("11.png");  
   img12 = loadImage("12.png");     
   img13 = loadImage("13.png");    
   img14 = loadImage("14.png");      
   img15 = loadImage("15.png"); 
   img16 = loadImage("16.png");  
   img17 = loadImage("17.png");     
   img18 = loadImage("18.png");    
   img19 = loadImage("19.png"); 
   
   img20 = loadImage("20.png"); 
   img21 = loadImage("21.png");  
   img22 = loadImage("22.png");     
   img23 = loadImage("23.png");    
   img24 = loadImage("24.png");      
   img25 = loadImage("25.png"); 
   img26 = loadImage("26.png");  
   img27 = loadImage("27.png");     
   img28 = loadImage("28.png");    
   img29 = loadImage("29.png");      
   
   img30 = loadImage("30.png"); 
   img31 = loadImage("31.png");  
   img32 = loadImage("32.png");     
   img33 = loadImage("33.png");    
   img34 = loadImage("34.png");      
   img35 = loadImage("35.png"); 
   img36 = loadImage("36.png");  
   img37 = loadImage("37.png");     
   img38 = loadImage("38.png");    
   img39 = loadImage("39.png");      
   
   img40 = loadImage("40.png"); 
   img41 = loadImage("41.png");  
   img42 = loadImage("42.png");     
   img43 = loadImage("43.png");    
   img44 = loadImage("44.png");      
   img45 = loadImage("45.png");
   img46 = loadImage("46.png");  
   img47 = loadImage("47.png");     
   img48 = loadImage("48.png");    
   img49 = loadImage("49.png");      
   
   img66 = loadImage("66.png"); 
 }

 void draw() {
    
   selector = int(random(0,5));
   String[] stuff = loadStrings("felicidad.txt");
   data = int(split(stuff[0], ','));
   println("El valor de estado es:"+data[0]);
   
   if(selector==0){
       if(data[0]==0){
        image(img00, 0, 0);
        println("Valor = 00");    
       }
       if(data[0]==1){
        image(img01, 0, 0);
        println("Valor = 01");    
       }
       if(data[0]==2){
        image(img02, 0, 0);
        println("Valor = 02");        
       }
       if(data[0]==3){
        image(img03, 0, 0);  
        println("Valor = 03");        
       }
       if(data[0]==4){
        image(img04, 0, 0); 
        println("Valor = 04");        
       }
       if(data[0]==5){
        image(img05, 0, 0);
        println("Valor = 05");        
       }
       if(data[0]==6){
        image(img06, 0, 0);
        println("Valor = 06");    
       }
       if(data[0]==7){
        image(img07, 0, 0);
        println("Valor = 07");        
       }
       if(data[0]==8){
        image(img08, 0, 0);  
        println("Valor = 08");        
       }
       if(data[0]==9){
        image(img09, 0, 0); 
        println("Valor = 09");        
       }
       if(data[0]!=0 && data[0]!=1 && data[0]!=2 && data[0]!=3 && data[0]!=4 && data[0]!=5 data[0]!=6 && data[0]!=7 && data[0]!=8 && data[0]!=9){
        println("Dato Incorrecto");
        image(img66, 0, 0);    
        }
   }else if (selector==1){
       if(data[0]==0){
        image(img10, 0, 0);
        println("Valor = 10");    
       }
       if(data[0]==1){
        image(img11, 0, 0);
        println("Valor = 11");    
       }
       if(data[0]==2){
        image(img12, 0, 0);
        println("Valor = 12");        
       }
       if(data[0]==3){
        image(img13, 0, 0);  
        println("Valor = 13");        
       }
       if(data[0]==4){
        image(img14, 0, 0); 
        println("Valor = 14");        
       }
       if(data[0]==5){
        image(img15, 0, 0);
        println("Valor = 15");        
       }
       if(data[0]==6){
        image(img16, 0, 0);
        println("Valor = 16");    
       }
       if(data[0]==7){
        image(img17, 0, 0);
        println("Valor = 17");        
       }
       if(data[0]==8){
        image(img18, 0, 0);  
        println("Valor = 18");        
       }
       if(data[0]==9){
        image(img19, 0, 0); 
        println("Valor = 19");        
       }
       if(data[0]!=0 && data[0]!=1 && data[0]!=2 && data[0]!=3 && data[0]!=4 && data[0]!=5 data[0]!=6 && data[0]!=7 && data[0]!=8 && data[0]!=9){
        println("Dato Incorrecto");
        image(img66, 0, 0);    
        }   
   }else if(selector==2){
       if(data[0]==0){
        image(img20, 0, 0);
        println("Valor = 20");    
       }
       if(data[0]==1){
        image(img21, 0, 0);
        println("Valor = 21");    
       }
       if(data[0]==2){
        image(img22, 0, 0);
        println("Valor = 22");        
       }
       if(data[0]==3){
        image(img23, 0, 0);  
        println("Valor = 23");        
       }
       if(data[0]==4){
        image(img24, 0, 0); 
        println("Valor = 24");        
       }
       if(data[0]==5){
        image(img25, 0, 0);
        println("Valor = 25");        
       }
       if(data[0]==6){
        image(img26, 0, 0);
        println("Valor = 26");    
       }
       if(data[0]==7){
        image(img27, 0, 0);
        println("Valor = 27");        
       }
       if(data[0]==8){
        image(img28, 0, 0);  
        println("Valor = 28");        
       }
       if(data[0]==9){
        image(img29, 0, 0); 
        println("Valor = 29");        
       }
       if(data[0]!=0 && data[0]!=1 && data[0]!=2 && data[0]!=3 && data[0]!=4 && data[0]!=5 data[0]!=6 && data[0]!=7 && data[0]!=8 && data[0]!=9){
        println("Dato Incorrecto");
        image(img66, 0, 0);    
        }
   }else if(selector==3){
       if(data[0]==0){
        image(img30, 0, 0);
        println("Valor = 30");    
       }
       if(data[0]==1){
        image(img31, 0, 0);
        println("Valor = 31");    
       }
       if(data[0]==2){
        image(img32, 0, 0);
        println("Valor = 32");        
       }
       if(data[0]==3){
        image(img33, 0, 0);  
        println("Valor = 33");        
       }
       if(data[0]==4){
        image(img34, 0, 0); 
        println("Valor = 34");        
       }
       if(data[0]==5){
        image(img35, 0, 0);
        println("Valor = 35");        
       }
       if(data[0]==6){
        image(img36, 0, 0);
        println("Valor = 36");    
       }
       if(data[0]==7){
        image(img37, 0, 0);
        println("Valor = 37");        
       }
       if(data[0]==8){
        image(img38, 0, 0);  
        println("Valor = 38");        
       }
       if(data[0]==9){
        image(img39, 0, 0); 
        println("Valor = 39");        
       }
       if(data[0]!=0 && data[0]!=1 && data[0]!=2 && data[0]!=3 && data[0]!=4 && data[0]!=5 data[0]!=6 && data[0]!=7 && data[0]!=8 && data[0]!=9){
        println("Dato Incorrecto");
        image(img66, 0, 0);    
        }   
   }else if(selector==4){
       if(data[0]==0){
        image(img40, 0, 0);
        println("Valor = 40");    
       }
       if(data[0]==1){
        image(img41, 0, 0);
        println("Valor = 41");    
       }
       if(data[0]==2){
        image(img42, 0, 0);
        println("Valor = 42");        
       }
       if(data[0]==3){
        image(img43, 0, 0);  
        println("Valor = 43");        
       }
       if(data[0]==4){
        image(img44, 0, 0); 
        println("Valor = 44");        
       }
       if(data[0]==5){
        image(img45, 0, 0);
        println("Valor = 45");        
       }
       if(data[0]==6){
        image(img46, 0, 0);
        println("Valor = 46");    
       }
       if(data[0]==7){
        image(img47, 0, 0);
        println("Valor = 47");        
       }
       if(data[0]==8){
        image(img48, 0, 0);  
        println("Valor = 48");        
       }
       if(data[0]==9){
        image(img49, 0, 0); 
        println("Valor = 49");        
       }
       if(data[0]!=0 && data[0]!=1 && data[0]!=2 && data[0]!=3 && data[0]!=4 && data[0]!=5 data[0]!=6 && data[0]!=7 && data[0]!=8 && data[0]!=9){
        println("Dato Incorrecto");
        image(img66, 0, 0);    
        }   
   }else {
        println("Dato Incorrecto");
        image(img66, 0, 0);
   }
   delay(1000);
 }