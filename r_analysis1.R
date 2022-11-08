m1 <- matrix(c(0,456,334,456,0,123, 334, 123, 0),
             nrow=3)
m1
m1[2,]>0
min(m1[2,m1[2,]>0])

min(m1[2,])
m1[2,]!=min(m1[2,])
m1[2,m1[2,]!=min(m1[2,])]
min(m1[2,m1[2,]!=min(m1[2,])])
#???

#Data import / export
x <- readline(prompt="Adınız :")
y <- readline(prompt="Yaşınız :")

#scan
?scan
scan()
x <- scan()
y <- scan(what="")

getwd()
x <- scan(file="dosya1.txt")
x
y <- scan(file="dosya1.txt",
          what="")
y

x
print(x)
class(print(x))

y
print(y)
class(print(y))

x <- 1:10
x
cat(x)
class(cat(x))

cat(x, "ek1")
cat(x, sep="-")

cat(x, file="deneme1.txt", sep="\n")

t1 <- readLines("deneme1.txt")

t1 <- readLines("deneme1.txt")

?connection

con1 <- url("https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data")

readLines(con1,n=1)
readLines(con1,n=1)
close(con1)

?read.table

default.stringsAsFactors()

?write.table

df1 <- read.table(file = "auto-mpg.data",
           header = F,
           sep=" ",
           dec=".")

df1 <- read.table(file = "auto-mpg.data",
                  header = F,
                  sep="", #ardışık boşlukları tek say
                  dec=".")

str(df1)

table(df1$V4)

df1 <- read.table(file = "auto-mpg.data",
                  header = F,
                  sep="", #ardışık boşlukları tek say
                  dec=".",
                  na.strings = "?")
str(df1)

names(df1) <- c("mpg","cylinders","displacement","horsepower","weight","acceleration","model_year","origin","car_name")
str(df1)

df1[1:10,1:5]

Sys.Date()


