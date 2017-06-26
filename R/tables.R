numberS <- readline("enter the number ")
maxS <- readline("enter the max ")
endS <- readline("enter enter the end number ")
number <- as.numeric(numberS)
max <- as.numeric(maxS)
end <- as.numeric(endS)

for (i in number:end){
  for(j in 1:max){
    print(paste(i ,"x" ,j,"=",i*j))
  }
}