MoneyToPay <- 123
MoneyGiven <- 9934

MoneyToPay = floor(MoneyToPay *100)
MoneyGiven = floor(MoneyGiven*100)

AmountLeft = MoneyGiven-MoneyToPay

OneToNine <- function(a) {b<-(switch(a, "One","Two","Three","Four","Five","Six","Seven","Eight","Nine"))
return(b)}
TenToNineteen<-function(a) {b<-(switch(a,"Ten","Eleven","Twelve","Thirteen","Fourteen","Fixteen","Sixteen","Seventeen","Eighteen","Nineteen"))
return(b)}
Tens <- function(a){b<-(switch(a,"Ten","Twenty","Thirty","Fourty","Fifty","Sixty","Seventy","Eighty","Ninety"))
return(b)}


overall <- function(overall){
  #overall <- 1034  # Number here
  word <- ""
  FirstDigit <- floor(overall / 1000)
  if (FirstDigit > 0){
    word =   paste(OneToNine(FirstDigit)," Thousand ")
  }
  
  SecondDigit <- floor((overall %% 1000 / 100))
  if (SecondDigit > 0){
    word = paste(word,OneToNine(SecondDigit),"Hundred ")
  }
  
  ThirdDigit <- floor(overall %% 100 / 10)
  if (ThirdDigit > 1){
    word = paste(word,Tens(ThirdDigit)," ")
  }
  
  ForthDigit <- floor(overall %% 10)
  if (ThirdDigit == 1){
    word = paste(word,TenToNineteen((overall %% 100)-9))
  }else if (ForthDigit > 0){
    #print(sprintf("%s",OneToNine(ForthDigit)))
    #cat(OneToNine(ForthDigit))
    word = paste(word,OneToNine(ForthDigit))
  }
  paste(word)
}



#print(overall(50))

if (AmountLeft<0){
  print("Give More Money")
}else{
  if (AmountLeft>=5000){
    print(paste("Please Give ", overall(floor(AmountLeft/5000))," 50£ notes"))
    AmountLeft = AmountLeft - floor(AmountLeft/5000)*5000
  }
  if (AmountLeft>=2000){
    print(paste("Please Give ", overall(floor(AmountLeft/2000))," 20£ notes"))
    AmountLeft = AmountLeft - floor(AmountLeft/2000)*2000
  }
  if (AmountLeft>=1000){
    print(paste("Please Give ", overall(floor(AmountLeft/1000))," 10£ notes"))
    AmountLeft = AmountLeft - floor(AmountLeft/1000)*1000
  }
  if (AmountLeft>=500){
    print(paste("Please Give ", overall(floor(AmountLeft/500))," 5£ notes"))
    AmountLeft = AmountLeft - floor(AmountLeft/500)*500
  }
  if (AmountLeft>=200){
    print(paste("Please Give ", overall(floor(AmountLeft/200))," 2£ coin"))
    AmountLeft = AmountLeft - floor(AmountLeft/200)*200
  }
  if (AmountLeft>=100){
    print(paste("Please Give ", overall(floor(AmountLeft/100))," 1£ coin"))
    AmountLeft = AmountLeft - floor(AmountLeft/100)*100
  }
  if (AmountLeft>=50){
    print(paste("Please Give ", overall(floor(AmountLeft/50)),"50p coin"))
    AmountLeft = AmountLeft - floor(AmountLeft/50)*50
  }
  if (AmountLeft>=20){
    print(paste("Please Give ", overall(floor(AmountLeft/20)),"20p coin"))
    AmountLeft = AmountLeft - floor(AmountLeft/20)*20
  }
  if (AmountLeft>=10){
    print(paste("Please Give ", overall(floor(AmountLeft/10)),"10p coin"))
    AmountLeft = AmountLeft - floor(AmountLeft/10)*10
  }
  if (AmountLeft>=5){
    print(paste("Please Give ", overall(floor(AmountLeft/5)),"5p coin"))
    AmountLeft = AmountLeft - floor(AmountLeft/5)*5
  }
  if (AmountLeft>=2){
    print(paste("Please Give ", overall(floor(AmountLeft/2)),"2p coin"))
    AmountLeft = AmountLeft - floor(AmountLeft/2)*2
  }
  if (AmountLeft>=1){
    print(paste("Please Give ", overall(floor(AmountLeft/1)),"1p coin"))
    AmountLeft = AmountLeft - floor(AmountLeft/1)*1
  }
}