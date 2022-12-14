y=c(9.95,24.45,31.75,35,25.02,16.86,14.38,9.6,
      24.35,27.5,17.08,37,41.95,11.66,21.65,
      17.89,69,10.3,34.93,46.59,44.88,54.12,56.63,22.13,21.15)
x1=c(2,8,11,10,8,4,2,2,9,8,4,11,12,2,4,4,20,1,10,15,15,16,17,6,5)
x2=c(50,110,120,550,295,200,375,52,100,300,412,400,500,360,205,400,
     600,585,540,250,290,510,590,100,400)

hist(y)
psych::describe(y)
summary(y)
summary(x1)
summary(x2)

model=lm(y~x1+x2)
summary(model)

qt(.975,22)
qf(0.95,2,22)
model1=lm(y~x1) #basit do?rusal regresyon modeli sadece x1 ile kurulsayd? 
                #b1 katsay?s?n?n bir ?nceki modele g?re farkl? ??kt???n? 
                #vurgulamak i?in
summary(model1)

model$coefficients
model1$coefficients

###matrix plot ?izimi i?in###
data=cbind(y,x1,x2)
colnames(data) <- c("Strength","Length","Height")
pairs(data[,1:3], pch = 19, col='red', lower.panel = NULL)


anova(model)

###G?ven ve Tahmin Aral?klar?###
confint(model)
confint(model,level=0.90)

anova(model) # varyans analiz tablosu

## C-I ve P-I 
new <- data.frame(x1=c(8,10), x2=c(275,300))
predict(model, newdata = new)
##X0 icin Y0 ?in dagiliminin ortalamasinin guven araligi##
predictnewconf=predict(model,new,interval="confidence") 
cbind(new,predictnewconf)
##X0 icin Y0'a ait tahmin araligi##
predictnewpred=predict(model,new,interval="prediction") 
cbind(new,predictnewpred)



######################################################################
##E?risel Regresyon Modeli##

Purity=c(3,7,8,15,22,33,40,54,67,70,78,85,87,99)
Filter_time=c(1,2,3,5,7,8,10,12,13,14,15,15,16,17)

model_Purity=lm(Purity~Filter_time)
summary(model_Purity)

plot(Filter_time,Purity)
abline(model_Purity)

Filter_time2=Filter_time^2 #de?i?kenin karesi al?n?r.

model_Purity_2=lm(Purity~Filter_time+Filter_time2)
summary(model_Purity_2)

plot(Filter_time, Purity,  
     xlab="Filter Time ", ylab="Purity", pch=19)
abline(model_Purity)
lines(Filter_time,fitted.values(model_Purity_2), col="red")



###############################################
##KUKLA DE???KEN##

library("ISLR")
Auto
help(Auto)
sapply(Auto, class) ####degisken tiplerini g?rmek i?in###

attach(Auto)
origin
is.factor(origin) #de?i?kenin kategorik olarak tan?ml? olup olmad???n? s?namak i?in
summary(origin) #origin de?i?keni n?merik olarak tan?mland???ndan tan?mlay?c? istatistikler elde edilebiliyor!!


origin=as.factor(origin) #de?i?keni kategorik yapmak i?in 
is.factor(origin)
summary(origin)

m1=lm(mpg~origin)
summary(m1)


m2=lm(mpg~weight+origin)
summary(m2)


m3=lm(mpg~origin+weight+weight*origin)
summary(m3)



library(car) #recode komutu i?in gerekli
origin_recoded<-recode(origin,"1:2=1L;else=2L") #2 d?zeye indirgemek i?in
origin_recoded<-as.factor(origin_recoded)

m4=lm(mpg~origin_recoded+weight)
summary(m4)
m5=lm(mpg~origin_recoded+weight+weight*origin_recoded)
summary(m5)

head(Auto)
cylinders
summary(cylinders)
summary(as.factor(cylinders))
m6=lm(mpg~origin_recoded+weight+as.factor(cylinders))
summary(m6)

######Model Se?me  Komutlar?####

install.packages("olsrr")
library(olsrr)

library("ISLR")
Auto
head(Auto)
attach(Auto)
library(car) #recode komutu i?in gerekli
origin_recoded<-recode(origin,"1:2=1L;else=2L") #2 d?zeye indirgemek i?in
origin_recoded<-as.factor(origin_recoded)

modelm=lm(mpg~as.factor(cylinders)+displacement+as.numeric(horsepower)+weight+acceleration+origin_recoded,data=Auto)
summary(modelm)

a=ols_step_all_possible(modelm)
plot(a)
summary(a)
a$predictors[42]
modela=lm(mpg~as.factor(cylinders)+as.numeric(horsepower)+weight+origin_recoded,data=Auto)
summary(modela)


s=ols_step_both_p(modelm)
s=ols_step_both_p(modelm, pent = 0.05, prem = 0.1)
s
s$model
plot(s)

b=ols_step_backward_p(modelm)
b
b$model
plot(b)

f=ols_step_forward_p(modelm)
f
f$model
plot(f)


modelbest=lm(mpg~as.factor(cylinders)+as.numeric(horsepower)+weight+origin_recoded,data=Auto)

ols_press(modelbest)
ols_press(modelm)
