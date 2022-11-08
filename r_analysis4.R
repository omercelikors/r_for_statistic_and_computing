5:1
rep(5:1, each=2)
3:7
rep(5:1, each=3:7)#raises a warning
rep(5:1,times=3)
rep(5:1,times=3:7)

rep(0:4,each=4)
rep(0:4,each=4)-c(0,1)

rep(0:4,each=4)+c(0,-1)

rep(1:5,each=4)-c(1,2)

1:10
-2:10
3^-2:10
3^(-2:10)

-3:3
(-3:3)^3

LETTERS
letters
pi
exp(1)
month.name
month.abb
month.name[1:6]

x[1] <- 123
x <- c()
length(x)
x[1] <- 123

rm(list = "x")
rm(list=ls())

x <- numeric(10)
y <- character(10)
rm(list=ls())

x1 <- c(9,6,3,5)
x1
x1>5

x1==5

x1>5
sum(x1>5)
sum(x1==5)

x1[x1>5]

x1[x1<=5]
x1[!x1>5]
x1[x1==5]
x1[x1!=5]

subset(x1, x1>5)

which(x1>5)

x1[which(x1>5)]

x1 <- c(9,6,3,5)
x2 <- c("A","A","B","B")

x1>5
x2=="B"
(x1>5)&(x2=="B")
(x1>5)|(x2=="B")

all(x1>5)
any(x1>5)

(x1>5)&(x1<10)

x1
x2
x1[x2=="B"]

x1[x1^2>10]

subset(x1, x1^2>10)

which(x1^2>10)

x1
as.character(x1)
as.logical(x1)

x2
as.numeric(x2)

x3 <- c("3","54.3","-43.9")
x3
as.numeric(x3)
as.integer(x3)

as.logical(x2)

x3[4] <- "0"
x3
as.logical(x3)

mode(x1)
mode(x2)
mode(x3)

x1 <- c(9,6,NA,3,5)
x1
length(x1)
sum(x1)
mean(x1)
mean(x1,na.rm=T)

x1 <- c(9,6,NULL,3,5)
x1
length(x1)
x1 <- NULL
x1

sqrt(-1)
1/0
-1/0

x1 <- c(9,6,NA,3,5)

anyNA(x1)
is.na(x1)
complete.cases(x1)

x1[!is.na(x1)]
x1[complete.cases(x1)]

mean(x1[!is.na(x1)])


x3 <- 1:3
x4 <- c(1,2,3)
x5 <- c(1,3,5)

x4==x5
typeof(x4)
typeof(x5)

x3==x4
identical(x3,x4)
typeof(x3)
typeof(x4)

m1 <- matrix(c(9,6,3,5))
m1

m1 <- matrix(c(9,6,3,5),byrow=T)
m1

m1 <- matrix(c(9,6,3,5),nrow=2)
m1

m1 <- matrix(c(9,6,3,5),nrow=2, byrow=T)
m1

m1 <- matrix(c(9,6,3,5,10),nrow=2, byrow=T)
m1


m1 <- matrix(c(9,6,3,5,10),nrow=2, ncol=5, 
             byrow=T)
m1

m1 <- matrix(c(9,6,3,5,10),nrow=2, ncol=4, 
             byrow=T)
m1

m1
m1[2,1]
m1[2,]
m1[,2]
m1[,2:3]
m1[,c(1,3)]
m1[,c(3,1)]
m1[,c(3,3)]
m1[,-c(1,2)]
m1[-1,]

m2 <- matrix(c(9,6,3,5,12,10),nrow=2)
m2
m2[,2]>=5
m2[m2[,2]>=5,]

rivers
?rivers
data()

x <- rivers[1:50]
x
x_sorted <- sort(x)

x_sorted

LETTERS
LETTERS[1:5]
group <- rep(LETTERS[1:5],each=10)
x_sorted

group=="D"
x_sorted[group=="D"]
