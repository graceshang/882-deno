setwd("~/Desktop")
BF<- read.csv(file="BudgetFood.csv")
attach(BF)
#AND in R is the ampersand &.
data.frame<-subset(BF,wfood>0.75 & size>10)
#combine the two criteria with OR instead of AND using |
some<-subset(BF,wfood>0.75|size>10)
#keep the records with missing values by using the is.na
data<-subset(BF,is.na(size))
#keep the records without missing by using the is.na command and the exclamation point
data<-subset(BF,!is.na(size))
#replace values by missing
BFR<-within(BF,{
  size[size==0]<-NA
  wfood[wfood==0]<-NA
  age[size==0&age==0]<-NA})

