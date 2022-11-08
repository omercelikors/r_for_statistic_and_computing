help("mean")
?mean
help.search("arithmetic mean")
??"arithmetic mean"
??variance
example(mean)
?Syntax
x<-5 
x <- -5
x
x <- 29
x
x <- 29L
x
c(9,6,3,5)
x <- c(9,6,3,5)
x
x1 <- x
x1
x1 <- c(9,6,3,5)
x2 <- 1:4
x3 <- c("D","S")
x4 <- (x1>x2)
x5 <- 1i
x6 <- as.raw(13)
x1
x2
x3
x4
x5
x6

class(x1)
class(x2)
class(x3)
class(x4)
class(x5)
class(x6)

typeof(x1)
typeof(x2)

mode(x1)
mode(x2)

#access
# comment line
x1
x1[1]
x1[1:3]
x1[c(1,2,4)]
x1[c(3,1,4:2)]
x1
y1 <- x1[c(3,1,4:2)]
y1
x1
y1
c(x1,y1)
x1
x1[1]
x1[-1]
x1[-2]
x1
x1[-c(1,3)]
#access to the last element
length(x1)
x1[length(x1)]

#Insert value
x1
x1[5] <- 12
x1
c(x1,13)
x1 <- c(x1,13)
x1
x1 <- c(13,x1)
x1
x1 <- x1[1:6]
x1
x1 <- x1[-2]
x1
x1 <- x1[-c(1,6)]
x1

x1 <- c(9,6,3,5,13)
x1
x1+2
x1+c(1,2)

1:10
100:1
1.3:5
5:1.2

x1[1:3]

?seq
seq(1,10)

seq(from=1, to=10, by=2)

seq(to=10, from=1, by=2)

seq(-1,1,by=0.3)
seq(10,-10, by= -5)
seq(500, -500, 10)
seq(500, -500, -10)
seq(1,10, length.out = 100)
seq(1,10, len = 100)

?rep

rep(1:10, times=5)
rep(1:10, each=5)
rep(1:10, each=5, times=3)
gr <- rep(1:3, each=50)
gr
rep(1:5, times=c(3,1,2,4,8))

3^1
3^2
3^3
1:3
3^1:3
3^(1:3)
3^(1:10)
3^(-2:10)
x <- 1e6
x*2

x <- c()
x
x <- numeric(50)
x

