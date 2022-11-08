.libPaths("C:/Users/Public/R/win-library/4.0") # Paketlerin yükleneceði adresi belirliyor
# Önce .libPaths çalýþtýrýlýp daha sonra install.packages ile istenen paket yüklenebilir.


#örnek 5.46 (Kesikli rassal deðiþken için) X kesikli rassal deðiþkeninin olasýlýk fonksiyonu 
# p(x)=(1/15)x, x=1,2,3,4,5 þeklinde verilmiþtir.Beklenen deðer, varyans ve daðýlým fonksiyonu deðerlerini bulunuz.

x<-c(1,2,3,4,5)
f<-c(1/15,1/15,1/15,1/15,1/15)
p<-(x*f)   #pdf olabilmesi için olasi tüm degerlere karsilik gelen olasiliklarin toplami 1'e esit olmalidir.
Exp<-sum(x*p)
varyans<-sum((x-Exp)*(x-Exp)*p)
varyans<-sum(((x-Exp)^2)*p)
F<-cumsum(p)

#örnek 5.47 (sürekli  rassal deðiþken için) X sürekli rassal deðiþkeninin olasýlýk yoðunluk fonksiyonu
# f(x)=(x/8), 0 < x < 4 olarak verilmiþtir. P(X < 2) ve P(2 <= X <= 3) olasýlýklarýný bulunuz.

g<-function(x)x/8 #fonksiyon tek satir ise bu sekilde yazilabilir.
g<-function(x){   #satir sayisi birden fazla ise bu sekilde yazilir.
  x/8
}
integrate(g,lower=0,upper=2)
  
