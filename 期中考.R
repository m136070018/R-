rm(list=ls())
library(ggplot2)


setwd("C:/Users/dcukf/Desktop/R語言/")
M<- read.csv("Mobiles.csv", header=TRUE)

#第一題
appleA <- subset(M, Company=="Apple")
mean(appleA$PriceUSA)   #Apple美國售價平均數1028.485
sd(appleA$PriceUSA)   #Apple美國售價標準差247.8969

SamsungA <- subset(M, Company=="Samsung")
mean(SamsungA$PriceUSA)   #Samsung美國售價平均數748.4318
sd(SamsungA$PriceUSA)   #Samsung美國售價標準差515.3826

#第二題
boxplot(Year~PriceChina, data=M,
        xlab="年份",ylab="價格",main="年份-中國售價的盒鬚圖")  #年份-中國售價的盒鬚圖

hist(M$PriceChina,xlab="人數",ylab="售價",main="中國售價長條圖")  #中國售價長條圖
