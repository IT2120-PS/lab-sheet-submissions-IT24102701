setwd("C:\\Users\\akila\\Desktop\\IT24102701")
getwd()

#Load the dataset
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
attach(data)

#Question 01: Population Statistics
popmn <- mean(Weight.kg.)
pop_dev <- sd(Weight.kg.)
#View Population mean
popmn
#View Population Standard Deviation
pop_dev

#Question 02: 25 random samples of size 6 with replacements
set.seed(123)
samples <- matrix(nrow = 6, ncol = 25)
for (i in 1:25) {
  samples[, i] <- sample(Weight.kg., size = 6, replace = TRUE)
}
#Calculate sample means standard deviation
s.means <- apply(samples, 2, mean)
#Calculate Standard Deviations
s.dev <- apply(samples, 2, sd)
#Veiw Sample Means
s.means
#View Sample Standard Deviation
s.dev


#Question 03: Mean and SD of thr sample means
samplemean <- mean(s.means)
sampledev <- sd(s.means)
#Mean of sample means
samplemean
#SD of sample Means
sampledev
#True Population Mean
popmn
#True Population SD
pop_dev