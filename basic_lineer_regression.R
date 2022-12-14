##t?ketim harcamalar? verisi

Y<-c(55,60,65,70,75,65,70,74,80,85,88,79,84,90,94,98,80,93,95,103,108,113,115,
     102,107,110,116,118,125,110,115,120,130,135,140,120,136,140,144,145,135,137,
     140,152,157,160,162,137,145,155,165,175,185,150,152,175,178,180,185,191)

hist(Y) #histogram
mean(Y) #ortalama
summary(Y) # tan?mlay?c? istatistikler
sort(Y) #veriyi k???kten b?y??e s?ralamak i?in


##gelir d?zeyi verisi
X<-c(rep(80,5),rep(100,6),rep(120,5),rep(140,7),
     rep(160,6),rep(180,6),rep(200,5),rep(220,7),rep(240,6),rep(260,7))


tapply(Y, X, mean) ##gelir d?zeyine g?re t?ketim harcamalar? ortalamas?

plot(X,Y,xlab = "Gelir D?zeyi($)", ylab = "T?ketim Harcamas?($)") ##serpme diyagram?
model <- lm(Y~X) #kestirilen do?rusal regresyon modeli 
abline(model) #kestirilen regresyon do?rusunun plot ?st?nde g?sterilmesi

summary(model)

qt(.975,58) #t tablo de?eri alfa=0,05 df=58

##katsay?lar i?in g?ven aral???##
confint(model,level=0.90)
confint(model) #default level=0.95
confint(model,level=0.99)


mean(X)
##yeni bir de?er i?in kestirim##

new <- data.frame(X = c(175, 200, 300, 350))

predict(model, newdata = new)
##X0 icin Y0 ?in dagiliminin ortalamasinin guven araligi##
predictnewconf=predict(model,new,interval="confidence")
cbind(new,predictnewconf)


##X0 icin Y0'a ait tahmin araligi##
predictnewpred=predict(model,new,interval="prediction")
cbind(new,predictnewpred) 


##### #####################################################################################
#Plot ?zerinde G?ven Aralo?? ve Kestirim Aral??? Bant geni?li?inin g?sterilmesi
par(mfrow=c(1,1))
plot(X, Y, xlim=c(80, 260), ylim=c(0, 200), xlab="gelir", ylab="t?ketim", main="Regression")
abline(model, col="lightblue")
abline(v=mean(X), col="red")
newx <- seq(80, 260, by=20)
conf_interval <- predict(model, newdata=data.frame(X=newx), interval="confidence",
                         level = 0.95)
lines(newx, conf_interval[,2], col="blue", lty=2)
lines(newx, conf_interval[,3], col="blue", lty=2)
pred_interval <- predict(model, newdata=data.frame(X=newx), interval="prediction",
                         level = 0.95)
lines(newx, pred_interval[,2], col="orange", lty=2)
lines(newx, pred_interval[,3], col="orange", lty=2)
##############################################################################################


