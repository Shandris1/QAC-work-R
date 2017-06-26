OneToNine <- function(a) {b<-(switch(a, "One","Two","Three","Four","Five","Six","Seven","Eight","Nine"))
  return(b)}
TenToNineteen<-function(a) {b<-(switch(a,"Ten","Eleven","Twelve","Thirteen","Fourteen","Fixteen","Sixteen","Seventeen","Eighteen","Nineteen"))
return(b)}
Tens <- function(a){b<-(switch(a,"Ten","Twenty","Thirty","Fourty","Fifty","Sixty","Seventy","Eighty","Ninety"))
return(b)}

overall <- 1034  # Number here

FirstDigit <- floor(overall / 1000)
if (FirstDigit > 0){
  cat(paste(OneToNine(FirstDigit)," Thousand "))
}

SecondDigit <- floor((overall %% 1000 / 100))
if (SecondDigit > 0){
  cat(paste(OneToNine(SecondDigit),"Hundred "))
}

  ThirdDigit <- floor(overall %% 100 / 10)
if (ThirdDigit > 1){
  cat(paste(Tens(ThirdDigit)," "))
}
  
  ForthDigit <- floor(overall %% 10)
  
  if (ThirdDigit == 1){
  cat(TenToNineteen((overall %% 100)-9))
}else if (ForthDigit > 0){
  cat(paste(OneToNine(ForthDigit)))}
