setwd("C:\\Users\\ASUS\\Desktop\\PS_Lab08")
getwd()
#Importing the dataset 
data <-read.table("Data - Lab 8.txt",header = TRUE)
fix(data)
attach(data)
#Question 1
popmean <- mean (Nicotine)
popvar<-var(Nicotine)
#Question 2
#Fiest create null vectors to store sample data sets.
samples<-c()
n<-c()
# The "for" loop will be used to create and assign samples of size 5 for "samples" variable created above.
#Using "sample" command we can draw a random sample either with replacement or without replacement.
for(i in 1:30){
  s<-sample(Nicotine,5,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('s',i))
}
#Asssign column names for each sample created.Names have stored earlier under "n"variable
colnames(samples)=n
s.means<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)
#Question 3
#Following commands will calculate mean and variance of sample means stored in "s.means"variable.
samplemean <-mean(s.means)
samplevars<-var(s.means)


#Question 4
#Compare the population mean and mean of sample means.
popmn
samplemean

#Question 5
#Compare the population variance and variance of sample mean
truevar = popvar/5
samplevars


#Exercise 
setwd("C:\\Users\\ASUS\\Desktop\\PS_Lab08")
getwd()
# Read the data file

weights <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

#Q1
popmn<-mean(Weight.kg.)
popmn
popsd<-sd(Weight.kg.)
popsd

# Q2
samples<-c()
n<-c()
for(i in 1:25){
  s<-sample(Weight.kg.,6,replace = TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}
colnames(samples)=n
s.means<-apply(samples,2,mean)
s.means
s.sd<-apply(samples,2,sd)
s.sd

#Q3
#calculate the mean and standard deviation of the 25 sample means 
samplemean<-mean(s.means)
samplemean
samplesd<-sd(s.sd)
samplesd

#state therelationship of them with true mean and true standard deviation
popmn
samplemean

truesd=popsd/5
samplesd
