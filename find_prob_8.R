.libPaths("C:/Users/Public/R/win-library/4.0") # Paketlerin yükleneceði adresi belirliyor
# Önce .libPaths çalýþtýrýlýp daha sonra install.packages ile istenen paket yüklenebilir.




#Uyum Ýyiliði Testleri 

#************************Simetrik Daðýlým için Normallik Sýnamasý******************************************

set.seed(3)    # Ayný sonuçlarý elde etmek için kullanýlýr.

# n<30 veri seti için;

x<-rnorm(25,mean=0,sd = 1)
hist(x,prob=TRUE)
lines(density(x,bw = 1),lwd=2)
qqnorm(x, pch = 1, frame = T)
qqline(x, col = "steelblue", lwd = 3)
boxplot(x,horizontal = T)
ks.test(x,alternative = "two.sided","pnorm",mean=0,sd=1)

install.packages("goftest")
library(goftest)

cvm.test(x,"pnorm",mean=0,sd=1)
ad.test(x,"pnorm",mean=0,sd=1)
shapiro.test(x)

# n>30 veri seti için;

x<-rnorm(1000,mean=0,sd = 1)
hist(x,prob=TRUE)
lines(density(x,bw = 1),lwd=2)
qqnorm(x, pch = 1, frame = T)
qqline(x, col = "steelblue", lwd = 3)
boxplot(x,horizontal = T)
ks.test(x,alternative = "two.sided","pnorm",mean=0,sd=1)
cvm.test(x,"pnorm",mean=0,sd=1)
ad.test(x,"pnorm",mean=0,sd=1)
shapiro.test(x)

#*****************Saðdan çarpýk Daðýlým için Normallik Sýnamasý********************************

x<-rexp(25,rate=1)
hist(x,prob=TRUE)
lines(density(x,bw = 1),lwd=2)
qqnorm(x, pch = 1, frame = T)
qqline(x, col = "steelblue", lwd = 3)
boxplot(x,horizontal = T)
ks.test(x,alternative = "two.sided","pnorm",mean=0,sd=1)
cvm.test(x,"pnorm",mean=0,sd=1)
ad.test(x,"pnorm",mean=0,sd=1)
shapiro.test(x)

#*****************Soldan çarpýk Daðýlým için Normallik Sýnamasý*********************************

x<-rbeta(25,shape1 = 5, shape2 = 1)
hist(x,prob=TRUE)
lines(density(x,bw = 1),lwd=2)
qqnorm(x, pch = 1, frame = T)
qqline(x, col = "steelblue", lwd = 3)
boxplot(x,horizontal = T)
ks.test(x,alternative = "two.sided","pnorm",mean=0,sd=1)
cvm.test(x,"pnorm",mean=0,sd=1)
ad.test(x,"pnorm",mean=0,sd=1)
shapiro.test(x)

# Normallik Dönüþümleri

# Karekök Dönüþümü

x<-rexp(1000,rate=1)
y<-sqrt(x)
hist(y,prob=TRUE)
lines(density(y,bw = 1),lwd=2)
qqnorm(y, pch = 1, frame = T)
qqline(y, col = "steelblue", lwd = 3)
boxplot(y,horizontal = T)
ks.test(y,alternative = "two.sided","pnorm",mean=0,sd=1)
cvm.test(y,"pnorm",mean=0,sd=1)
ad.test(y,"pnorm",mean=0,sd=1)
shapiro.test(y)

# Küpkök Dönüþümü

x<-rexp(1000,rate=1)
y<-(x)^(1/3)

mean(y)
var(y)
hist(y,prob=TRUE)
lines(density(y,bw = 1),lwd=2)
qqnorm(y, pch = 1, frame = T)
qqline(y, col = "steelblue", lwd = 3)
boxplot(y,horizontal = T)
ks.test(y,alternative = "two.sided","pnorm",mean=mean(y),sd=sd(y))
cvm.test(y,"pnorm",mean=mean(y),sd=sd(y))
ad.test(y,"pnorm",mean=0,sd=1)
shapiro.test(y)

# Logaritmik Dönüþüm

x<-rexp(1000,rate=1)
y<-log(x)
hist(y,prob=TRUE)
lines(density(y,bw = 1),lwd=2)
qqnorm(y, pch = 1, frame = T)
qqline(y, col = "steelblue", lwd = 3)
boxplot(y,horizontal = T)
ks.test(y,alternative = "two.sided","pnorm",mean=0,sd=1)
cvm.test(y,"pnorm",mean=0,sd=1)
ad.test(y,"pnorm",mean=0,sd=1)
shapiro.test(y)

# 1/X Dönüþümü

x<-rexp(1000,rate=1)
y<-(x)^(-1)
hist(y,prob=TRUE)
lines(density(y,bw = 1),lwd=2)
qqnorm(y, pch = 1, frame = T)
qqline(y, col = "steelblue", lwd = 3)
boxplot(y,horizontal = T)
ks.test(y,alternative = "two.sided","pnorm",mean=0,sd=1)
cvm.test(y,"pnorm",mean=0,sd=1)
ad.test(y,"pnorm",mean=0,sd=1)
shapiro.test(y)
