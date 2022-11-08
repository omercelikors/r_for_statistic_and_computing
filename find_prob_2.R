


elma<-c(89,120,134,146,156,164,198,99,120,166)
sum(elma) #Verileri toplar.
sum(elma)/length(elma) #ortalamayi hesaplatir.
mean(elma) #ortalamayi hesaplatir.


  elma[5] #girilen verideki 5. sirada yer alan degeri gösterir.
  elma[6]  #girilen verideki 6. sirada yer alan degeri gösterir.
  sort(elma) #elma verisini küçükten büyüge dogru siralar.
  sort(elma)[5] # siralanmis elma verisindeki 5. sirada yer alan degeri gösterir.
  sort(elma)[6] # siralanmis elma verisindeki 6. sirada yer alan degeri gösterir.
  (sort(elma)[5]+sort(elma)[6])/2 #medyan degerini bulur.
  median(elma)
  
quantile(elma,0.5) #istenilen herhangi bir yüzdelige karsilik gelen degeri verir.
quantile(elma,probs = c(0.25,0.50,0.75)) #istenilen birden fazla yüzdeliklere karsilik gelen degerleri verir.
summary(elma) #veri setinin konum ölçülerinin degerlerini verir.

table(elma) #verilerin frekanslarini verir.

boxplot(elma, main="Kutu Grafigi") #dikey kutu grafigi çizer.
boxplot(elma, main="Kutu Grafigi",horizontal = T) #yatay kutu grafigi çizer.

setwd("C:/Users/labuser/Downloads")
Doner<-read.csv("doner.csv")
colnames(Doner)<-c("Döner") # Sütun ismini belirler.
mean(Doner$Döner) #Döner kolonundaki veriyle islem yapilmasini saglar.
median(Doner$Döner)
summary(Doner$Döner)
table(Doner$Döner)
quantile(Doner$Döner,probs=c(0.01,0.5))
boxplot(Doner$Döner,main="Kutu Grafigi")
boxplot(Doner$Döner,main="Kutu Grafigi",horizontal=T)

#örnek 4.14- Degisim Ölçüleri
Kertenkele<-read.csv("kertenkele.csv")
mean(Kertenkele$kertenkele) # Ortalama hesaplar
var(Kertenkele$kertenkele) #kertenkele verisinin varyansini hesaplar.
sd(Kertenkele$kertenkele)  #kertenkele verisinin standart sapmasini hesaplar.

install.packages("moments") #gerekli R paketinin indirilmesini saglar.
library(moments) #Indirilen R paketinin çalistirilmasini saglar.
skewness(Kertenkele$kertenkele) #çarpiklik
kurtosis(Kertenkele$kertenkele)  #basiklik

#örnek 4.15- Degisim Ölçüleri
Araba<-read.csv("araba.csv")
attach(Araba) # ilgili dosyanin içindeki degiskenlerle islem yapilmasini saglar.
mean(Yol)      #Yol kolonunun ort. bulur.
mean(Silindir)
boxplot(Yol~Silindir, main="Yol-Silindir Grafigi", 
        xlab="Silindir sayisi", ylab="Katedilen yol")
boxplot(Yol~Silindir, main="Yol-Silindir Grafigi", 
        ylab="Silindir sayisi", xlab="Katedilen yol", horizontal=T)
