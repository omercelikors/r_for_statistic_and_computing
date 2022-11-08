m2 <- matrix(c(9,6,3,5,12,10),nrow=2)
m2
m2[m2[,2]>=5,]
m2%%2
m2%%2==0
m2[m2%%2==0]

paste(1:7,".gün",sep="")
sicaklik <- c(25, 26, 23, 28, 29, 27, 25)
names(sicaklik) <- paste(1:7,".gün",sep="")

sapma_max <- max(abs(sicaklik-mean(sicaklik)))
names(which(abs(sicaklik-mean(sicaklik))==sapma_max))

sicaklik[abs(sicaklik-mean(sicaklik))==sapma_max]

sapma_max <- max(abs(sicaklik-19.1))
sicaklik[abs(sicaklik-19.1)==sapma_max]

?rowMeans
m2 <- matrix(c(9,6,3,5,12,10),nrow=2)
rowMeans(m2)
mean(m2[1,])
mean(m2[2,])

?apply
apply(m2,1,sd)#m2 matrisinin satırlarının std. sapması
sd(m2[1,])
sd(m2[2,])
apply(m2,2,sd)#m2 matrisinin sütunlarının std. sapması

apply(m2,1,var)

#matrisi genişletmek
m3 <- matrix(c(7,4,2,-5),nrow=2)
m3
m3[3,] <- c(-3,2) #hatalı
rbind(m3,c(-3,2))
m3
m3 <- rbind(m3,c(-3,2))
m3
cbind(m3,c(9,5,0))
m3
m3 <- cbind(m3,c(9,5,0))

cbind(c(9,5,0),m3)
m3
rbind(c(1,2,3),m3)
m3
rbind(m3[1,],c(1,2,3),m3[-1,])
rbind(m3[1,],c(1,2,3),c(4,5,6),m3[-1,])

m3
rbind(m3[1:2,],c(1,2,3),m3[-c(1,2),])

m3[1,] <- c(7,2,-9)
m3
rownames(m3)
colnames(m3)

rownames(m3) <- paste0("r",1:3)
colnames(m3) <- LETTERS[1:3]
m3
m3["r1",]
m3[c("r1","r3"),]
m3[,"B"]  
m3[,c("B","A")]  

dim(m3)
length(m3)
nrow(m3)
ncol(m3)
t(m3)

#array
a1 <- array(seq(10,240,10), dim=c(2,4,3))
a1
a1[,,1]#1.matris
a1[,,1][1,]
a1[,,1][1,][1]
a1[2,,2] #2.matrisin 2.satırı

m1 <- matrix(1:6,nrow=2)
m2 <- matrix(7:12,nrow=2)
a1 <- array(data=c(m1,m2), dim=c(2,3,2))
a1
class(a1)
typeof(a1)

#list
?list

list1 <- list(e1=1:10,e2=letters[1:10],
              e3=matrix(1:12,3))
list1
list1[1] #e1 nesnesi list olarak
list1$e1 #e1 nesnesi vektör olarak

sum(list1[1])
sum(list1$e1)
sum(list1[[1]]) #list1 in 1.elemanına kendi türünde erişim

str(list1)
class(list1)
typeof(list1)

list1
list1[[4]] <- c("Yeni","eleman")
list1
list1$e5 <- c("En","yeni","eleman")
list1
str(list1)
names(list1)

list1[-1]
list1[-c(1,3)]
list1[-c(4,5)]

list2 <- list1[-c(4,5)]
list2
list2 <- list1[1:3]
list2

list1[5] <- NULL
list1

c(list1, list2)
length(list1) #list için nesne sayısı
names(list1) 
unlist(list1)

no <- c(3423,5345,2466)
ad <- c("AB","BB","DD")
puan1 <- c(90,87,92)

df1 <- data.frame(no,ad,puan1)
df1
class(df1)
typeof(df1)
str(df1)
df1 <- data.frame(no,ad,puan1,stringsAsFactors = T)
df1
str(df1)

df1 <- data.frame(no,ad,puan1)
str(df1)

df1[3]
mean(df1[3])
df1$puan1
df1[[3]]

df1[1,3]

df1[1,]
df1[1:2,]
df1[c(1,3),]
df1[1,c(1,3)]

df1$puan1>=90
df1[df1$puan1>=90,]
df1[df1$puan1>=90,3]
df1[df1$puan1>=90,]$puan1

df1[df1$puan1>=90,]
subset(df1,puan1>=90)

df1$puan2 <- c(75, 88, 76)
df1
cbind(df1, puan3=c(65,70,45))
df1

#df1[4,] <- c(6365,"EE",77,66) #hatalı !!!
#df1
#str(df1)

df1 <- data.frame(no,ad,puan1)
df1$puan2 <- c(75, 88, 76)
str(df1)

#df1 <- rbind(df1,list(6365,"EE",77,66))
#veya
df1[4,] <- list(6365,"EE",77,66)
df1
str(df1)

df2 <- rbind(df1[1:3,], list(1254,"FF",80,70),
             df1[-(1:3),])
df2
str(df2)
