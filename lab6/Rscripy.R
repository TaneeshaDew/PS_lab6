data<-read.table("C:/Users/IT18164404/Desktop/lab6/Data - Lab 6.txt",header=TRUE)
#header true else consider as data
#data means variable name
attach(data)
#to deal with data
View(data)
#1 
#$variable
mean(data$Nicotine)
#variance=var
var(data$Nicotine)
#2 30 sample from 40 data,select sample size 5,sample mean,variance
#genarate samples and assign to a matrix
#matrix name
samples<-c()
#colimn name
n<-c()
#function
for(i in 1:30){
  s<-sample(data$Nicotine,5)
  #s()#how many no of point for each sample
  #assign sample as s
  samples<-cbind(samples,s)
  #column naame head snumber
  n<-c(n,paste('s',i))
}
#assign sample as n
colnames(samples)<-n
#mean get by column by column
s.Means<-colMeans(samples)
s.Means
#samole varians.No direct function for this
#apply is function
#2 means get column wise(our sample with column wise>BOT 2)
#1 row wise
s.vars<-apply(samples,2,var)
s.vars
s.SD<-apply(samples,2,sd)
s.SD
s.means<-apply(samples,2,mean)
s.means
#s.Mn<-apply(samples,2,mean)
#s.Mn
#4
mean(data$Nicotine)
mean(s.means)
var(data$Nicotine)
var(s.means)