set.seed(731)
Male<-c(1445927,513970,13822223)
Female<-c(508029,1976807,26228128)
stem.occupation.by.sex<-as.data.frame(rbind(Male,Female))
names(stem.occupation.by.sex)<-c("STEM","STEM-Related","Non-STEM")
chisq.test(stem.occupation.by.sex)

#Bachelor degree of STEM by gender
M<-c(39545,38773,81270,10723,15972)
F<-c(56304,8611,17270,8119,10691)
BAstem<-as.data.frame(rbind(M,F))
names(BAstem)<-c("Biology","Computer Science","Engineering","Math&Stat","Physical Science")
BAstem
chisq.test(BAstem)
hist(BAstem)
