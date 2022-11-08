
veri1<- c(10.7,13.5,15.5,15.7,16.2,18.8,18.8,18.9,15.8,19.2,16.7,11.3,17.5,19.3,22.4,17.1,19.2,
          14.7,11.5,12.5,16.1,12.9,20.5,21.2,10.3,11.7,18.5,23.2,20.8) #temel veri girisi

setwd("C:/Belgelerim/DSM5001/_2019-2020/Veriler")  #verilerin kaydedildigi adres


veri6<- as.data.frame(veri1)
colnames(veri6)<- c("salam")

veri6<-read.csv(file="salamverisi.csv") #verileri kayitli oldugu adresten çagirma
veri1
veri6

veri2<-cbind(10.7,13.5,15.5,15.7,16.2,18.8,18.8,18.9,15.8,19.2,16.7,
         11.3,17.5,19.3,22.4,17.1,19.2,14.7,11.5,12.5,16.1,12.9,
         20.5,21.2,10.3,11.7,18.5,23.2,20.8)                           #sütun birlestirme

cbind(veri1,veri1) # İki farklı sütunu birleştirir

veri3<-rbind(10.7,13.5,15.5,15.7,16.2,18.8,18.8,18.9,15.8,19.2,16.7,11.3,17.5,19.3,22.4,17.1,19.2,
         14.7,11.5,12.5,16.1,12.9,20.5,21.2,10.3,11.7,18.5,23.2,20.8)  #satir birlestirme
rbind(veri1,veri1) # İki farklı satırı birleştirir

veri4<-t(veri3)  #transpoz
sort(veri1, decreasing = FALSE) #artan sirada siralar.
sort(veri1, decreasing = F)     #artan sirada siralar.
sort(veri1, decreasing = TRUE)  #azalan sirada siralar.
sort(veri1, decreasing = T)     #azalan sirada siralar.
rank(veri1)                     #hangi degerin hangi sirada oldugunu gösterir.
range(veri1)                    #en küçük ve en büyük degeri verir.
table(veri1)                    #hangi veriden kaç adet oldugunu gösterir.
veri1frekans<-table(cut(veri1,b=c(10.2,12.4,14.6,16.8,19.0,21.2,23.4))) #sinif frekanslarini verir.
cumsum(veri1frekans)            #sinif frekanslarini verir. 

hist(veri1, breaks=c(10.2,12.4,14.6,16.8,19.0,21.2,23.4), main="Salam verisinin yag oranlarinin histogram grafigi",
xlab = "Yag oranlari", ylab = "Siklik", col = "green") #sinif araliklarina göre historami çizer.
hist(veri1, breaks=seq(from=10.2,to=23.4, by=2.2), main="Salam verisinin yag oranlarinin histogram grafigi",
xlab = "Yag oranlari", ylab = "Siklik", col = "green") #breaks lar sequence komutuyla yazilmistir.
veri5<-c(11.5,15,18.5,21.3,27.5,17.8,18.1,21.1,24.8,29.7,20.6,21.1,24.8,27.1,30.9,22.5,23,26.3,
         28.6,36.6,25.6,26.3,28.3,30.6,40.6,28,28,30.5,33.9,15.7,29.8,30,33.2,20,19.5,31.3,32.7,17.5,
         22.2,25.4)
veri5
sort(veri1)
range(veri1)
stem(veri1,scale = 2) #scale ile gövde genisligi ayarlanir.
stem(veri6$salam)  # "$salam" komutuyla ilgili kolon seçimi yapilmis olur.

peynir<-c(69,198,42,97,40)
isim<-c("tulum","beyaz peynir", "lor", "çökelek", "kasar")
yüzde<-round(peynir/sum(peynir)*100)
birlestir<-paste(isim,yüzde,"%", sep=" ") #önceki 3 satirda girilen verileri birlestirir.
pie(peynir, labels=birlestir, col=rainbow(length(birlestir)), 
    main = "Peynir çesitlerinin pasta diagrami") #peynir çesitlerinin pasta grafigini çizer.

peynir<-c(69,198,42,97,40)
isim<-c("tulum","beyaz peynir", "lor", "çökelek", "kasar")
colors=c("red", "yellow", "green", "violet", "orange")
barplot(peynir, names.arg=isim, xlab="Peynir Türleri", col=colors)

mean(veri1)
median(veri1)
table(veri1) # 2 adet mod var.

