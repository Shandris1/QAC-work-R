 chem <- readline("enter first grade ")
 eng <- readline("enter second grade ")
 math <- readline("enter third grade ")
 chemP <- as.numeric(chem)/150*100
 engP <- as.numeric(eng)/150*100
 mathP <- as.numeric(math)/150*100
 pass <- 0
 if (chemP > 60){
   pass = pass+1
 }
 if (engP > 60){
   pass = pass+1
 }
 if (mathP>60){
   pass=pass+1
 }
 if (pass == 3){
   print("well done")
 }
 if (pass == 2){
   print("redo a course")
 }
 if (pass == 1){
   print("redo the year")
 }
 if (pass == 0 ){
   print("go home")
 }
 