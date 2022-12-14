.libPaths("C:/Users/Public/R/win-library/4.0") # Paketlerin y?klenece?i adresi belirliyor
# ?nce .libPaths ?al??t?r?l?p daha sonra install.packages ile istenen paket y?klenebilir.


#?rnek 5.46 (Kesikli rassal de?i?ken i?in) X kesikli rassal de?i?keninin olas?l?k fonksiyonu 
# p(x)=(1/15)x, x=1,2,3,4,5 ?eklinde verilmi?tir.Beklenen de?er, varyans ve da??l?m fonksiyonu de?erlerini bulunuz.

x<-c(1,2,3,4,5)
f<-c(1/15,1/15,1/15,1/15,1/15)
p<-(x*f)   #pdf olabilmesi i?in olasi t?m degerlere karsilik gelen olasiliklarin toplami 1'e esit olmalidir.
Exp<-sum(x*p)
varyans<-sum((x-Exp)*(x-Exp)*p)
varyans<-sum(((x-Exp)^2)*p)
F<-cumsum(p)

#?rnek 5.47 (s?rekli  rassal de?i?ken i?in) X s?rekli rassal de?i?keninin olas?l?k yo?unluk fonksiyonu
# f(x)=(x/8), 0 < x < 4 olarak verilmi?tir. P(X < 2) ve P(2 <= X <= 3) olas?l?klar?n? bulunuz.

g<-function(x)x/8 #fonksiyon tek satir ise bu sekilde yazilabilir.
g<-function(x){   #satir sayisi birden fazla ise bu sekilde yazilir.
  x/8
}
integrate(g,lower=0,upper=2)
  
