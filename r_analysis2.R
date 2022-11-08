#data.frame
mtcars
dim(mtcars)
length(mtcars)
names(mtcars)
row.names(mtcars)
class(mtcars)
typeof(mtcars)
mtcars[1]
mtcars[[1]]
mtcars$mpg
mpg
attach(mtcars)
mpg
detach(mtcars)
mpg

no <- c(3423,5345,2466)
ad <- c("AB","BB","DD")
puan1 <- c(90,87,92)
df1 <- data.frame(no,ad,puan1)
df1
str(df1)

df1 <- data.frame(no,ad,puan1,stringsAsFactors = T)
str(df1)

df1 <- data.frame(no,ad,puan1)
str(df1)

df1[1,]
df1[1:2,]
df1[c(1,3),]
df1[-c(1,3),]

df1[,1]
df1[,1:2]
df1[,c(1,3)]
df1[,-c(1,3)]

df1
df1$puan1>=90
df1[df1$puan1>=90,]
subset(df1,puan1>=90)
df1$puan2 <- c(75,88,76)
df1
df1[,5] <- c("IST","MAT","IST")
df1
names(df1)[5] <- "bolum"
df1
nrow(df1)
df1[nrow(df1),]
str(df1)
df1[nrow(df1)+1,] <-c(3457,"EE",79,89,"MAT")#yanlış!!!
mean(df1$puan1)
str(df1)


no <- c(3423,5345,2466)
ad <- c("AB","BB","DD")
puan1 <- c(90,87,92)
puan2 <- c(75,88,76)
bolum <- c("IST","MAT","IST")
df1 <- data.frame(no,ad,puan1,puan2,bolum)
df1
df1[nrow(df1)+1,] <-list(3457,"EE",79,89,"MAT")#doğru
str(df1)
df1
df1 <- rbind(df1,list(5457,"FF",69,99,"IST") )
df1
df1 <- rbind(df1[1:3,],list(6457,"GG",99,69,"MAT"),
             df1[-(1:3),])
df1

#factor
x1 <- c(3,4,5,2,2,4,5)
x1
xf <- factor(x1)
xf
mean(x1)
mean(xf)
x1 <- c(3,4,5,2,2,4,5)
xf <- factor(x1, levels=1:5)
xf
xf[8] <- 10
xf
xf <- xf[-8]
xf

x1 <- c(3,4,5,2,2,4,5)
xf <- factor(x1, levels=1:5, labels=LETTERS[1:5])
xf
levels(xf)
as.numeric(xf)

mean(as.numeric(xf))

x1 <- c(3,4,5,2,2,4,5)
xf <- factor(x1, levels=1:5,
             labels=LETTERS[1:5], ordered=T)
xf


x2 <- c(67,85,79,76,78,74,67,65)
b <- seq(60,90,by=5)
cut(x2,b)
cut(x2, b, labels=F)
cut(x2, b, right = F)
cut(x2, b, right = F, labels=F)
x2

df1
apply(df1[,3:4],2,mean)

list1 <- list(c(34,645,34,23,564),c(23,5,3,5,1,10))
list1

lapply(list1, mean)
sapply(list1, mean)

lapply(df1[,3:4], mean)
sapply(df1[,3:4], mean)

?iris
str(iris)
iris[1:5,]

apply(iris[,1:4],2,mean)
lapply(iris[,1:4],mean)
sapply(iris[,1:4],mean)

x <- c(23,45,76,34,56,34,67,23)
a <- rep(c("A","B"),times=4)
x
a
split(x,a)
sapply(split(x,a), mean)

?mtcars
df3 <- mtcars[,c(1,2,10)]
str(df3)

mean(df3[df3$cyl==4,1])
mean(df3[df3$cyl==6,1])
mean(df3[df3$cyl==8,1])

x3 <- split(df3$mpg,df3$cyl)
sapply(x3,mean)

tapply(df3$mpg, df3$cyl, mean)
tapply(df3$mpg, df3$cyl, mean, simplify = F)

tapply(df3$mpg, list(df3$gear, df3$cyl), mean)

tapply(iris$Sepal.Length,
       iris$Species, mean)

table(iris$Species)
table(mtcars$cyl)

table(mtcars$gear,mtcars$cyl)

#aggregate
df4 <- mtcars[,1:6]
head(df4)

aggregate(df4,list(df4$cyl),mean)
aggregate(df4[,-2],list(df4$cyl),mean)

#soru
m1 <- matrix(c(0,456,334,456,0,123, 334, 123, 0),
             nrow=3)
m1
