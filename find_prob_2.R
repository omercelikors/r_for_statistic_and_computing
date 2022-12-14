


elma<-c(89,120,134,146,156,164,198,99,120,166)
sum(elma) #Verileri toplar.
sum(elma)/length(elma) #ortalamayi hesaplatir.
mean(elma) #ortalamayi hesaplatir.


  elma[5] #girilen verideki 5. sirada yer alan degeri g?sterir.
  elma[6]  #girilen verideki 6. sirada yer alan degeri g?sterir.
  sort(elma) #elma verisini k???kten b?y?ge dogru siralar.
  sort(elma)[5] # siralanmis elma verisindeki 5. sirada yer alan degeri g?sterir.
  sort(elma)[6] # siralanmis elma verisindeki 6. sirada yer alan degeri g?sterir.
  (sort(elma)[5]+sort(elma)[6])/2 #medyan degerini bulur.
  median(elma)
  
quantile(elma,0.5) #istenilen herhangi bir y?zdelige karsilik gelen degeri verir.
quantile(elma,probs = c(0.25,0.50,0.75)) #istenilen birden fazla y?zdeliklere karsilik gelen degerleri verir.
summary(elma) #veri setinin konum ?l??lerinin degerlerini verir.

table(elma) #verilerin frekanslarini verir.

boxplot(elma, main="Kutu Grafigi") #dikey kutu grafigi ?izer.
boxplot(elma, main="Kutu Grafigi",horizontal = T) #yatay kutu grafigi ?izer.

setwd("C:/Users/labuser/Downloads")
Doner<-read.csv("doner.csv")
colnames(Doner)<-c("D?ner") # S?tun ismini belirler.
mean(Doner$D?ner) #D?ner kolonundaki veriyle islem yapilmasini saglar.
median(Doner$D?ner)
summary(Doner$D?ner)
table(Doner$D?ner)
quantile(Doner$D?ner,probs=c(0.01,0.5))
boxplot(Doner$D?ner,main="Kutu Grafigi")
boxplot(Doner$D?ner,main="Kutu Grafigi",horizontal=T)

#?rnek 4.14- Degisim ?l??leri
Kertenkele<-read.csv("kertenkele.csv")
mean(Kertenkele$kertenkele) # Ortalama hesaplar
var(Kertenkele$kertenkele) #kertenkele verisinin varyansini hesaplar.
sd(Kertenkele$kertenkele)  #kertenkele verisinin standart sapmasini hesaplar.

install.packages("moments") #gerekli R paketinin indirilmesini saglar.
library(moments) #Indirilen R paketinin ?alistirilmasini saglar.
skewness(Kertenkele$kertenkele) #?arpiklik
kurtosis(Kertenkele$kertenkele)  #basiklik

#?rnek 4.15- Degisim ?l??leri
Araba<-read.csv("araba.csv")
attach(Araba) # ilgili dosyanin i?indeki degiskenlerle islem yapilmasini saglar.
mean(Yol)      #Yol kolonunun ort. bulur.
mean(Silindir)
boxplot(Yol~Silindir, main="Yol-Silindir Grafigi", 
        xlab="Silindir sayisi", ylab="Katedilen yol")
boxplot(Yol~Silindir, main="Yol-Silindir Grafigi", 
        ylab="Silindir sayisi", xlab="Katedilen yol", horizontal=T)
