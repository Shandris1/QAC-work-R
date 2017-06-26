alex<-c(15,22,95)
john<-c(45,90,67)
kitty<-c(32,76,65)

results<-rbind(alex,john,kitty)
colnames(results)<-c("physics","math","murder")
print (results)
print(results["kitty","math"])

Result<-function(x){
  R<-sum(x)
  P<-R*100/150
  if(P>60){
    print("pass")
  }else{
    print("fail")
  }
}
apply(results,2,Result)

DF<-read.csv("C:\\R\\AssetsImportCompleteSample.csv")
row.names("row1")
#col.names("col1","col2","col3")
print(DF)
