https://github.com/m136070018/R-.git
rm(list=ls())
library(ggplot2)


setwd("C:/Users/dcukf/Desktop/R語言/")
M<- read.csv("Mobiles.csv", header=TRUE)

#第一題
appleA <- subset(M, Company=="Apple")
median(appleA$PriceUSA)   #Apple美國售價中位數999
sd(appleA$PriceUSA)   #Apple美國售價標準差247.8969

SamsungA <- subset(M, Company=="Samsung")
median(SamsungA$PriceUSA)   #Samsung美國售價中位數699
sd(SamsungA$PriceUSA)   #Samsung美國售價標準差515.3826

#第二題
boxplot(Year~PriceChina, data=M,
        xlab="年份",ylab="價格",main="年份-中國售價的盒鬚圖")  #年份-中國售價的盒鬚圖

hist(M$PriceChina,xlab="人數",ylab="售價",main="中國售價長條圖")  #中國售價長條圖

#第三題
ggplot(M, mapping= aes(x=Weight, y=Battery))+
  geom_point(color="skyblue",size=5,pch=8)+
  ggtitle("手機重量-電池容量" , subtitle="點陣圖")+
  xlab("weight")+ylab("battery")  #ggplot2 套件畫出手機重量-電池容量的點陣圖

#第四題
library(car)
leveneTest(PriceUSA~Company, data=M, center = mean)
#因顯著性小於0.05，所以兩組變異數具有顯著差異

#第五題
run1<-aov(Weight~Company, data=M)
summary(run1)  
#廠牌對手機重量為非常顯著，呈高度正相關

#第六題
run2<-aov(Weight~Company+Battery, data=M)
summary(run2)
#廠牌和電池容量對手機重量都為非常顯著，呈高度正相關

#第七題
nrow(subset(M,Year==2024 & Company=="Apple"))/nrow(subset(M,Year==2024))
#2024年發行手機中Apple比例為0.12

