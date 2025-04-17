rm(list=ls())
library(ggplot2)


setwd("C:/Users/dcukf/Desktop/R語言/")
M<- read.csv("Mobiles.csv", header=TRUE)

appleA <- subset(M, Company=="Apple")
mean(appleA$PriceUSA)   #Apple美國售價平均數1028.485
sd(appleA$PriceUSA)   #Apple美國售價標準差247.8969
