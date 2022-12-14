.libPaths("C:/Users/Public/R/win-library/4.0") # Paketlerin y?klenece?i adresi belirliyor
# ?nce .libPaths ?al??t?r?l?p daha sonra install.packages ile istenen paket y?klenebilir.


#Ders 4

#Sample Variance is an unbiased estimator of Pop. variance
install.packages("prob") #prob paketini y?kler.
library(prob)            #prob paketini ?alistirilabilir duruma getirir.
urnsamples(c(0,2,4),size=2,replace=T,ordered=T)   #girilen degerlerin i?inden istenilen b?y?kl?kte olasi t?m ?rneklemleri ?eker.
samples<-urnsamples(c(0,2,4),size=2,replace=T,ordered=T)  #?ekilen ?rnekleri samples degiskenine atar.
samples<-as.matrix(samples) #samples degiskenini matrise d?n?st?r?r.
variance<-numeric()         #bos vekt?r tanimlar.
for(i in 1:9){              #satir varyanslarini hesaplatmak i?in olusturulan d?ng?d?r. 
  variance[i]<-var(c(samples[i,]))   #herbir satirda hesaplanan varyanslari, variance vekt?r?ne atar.
}
mean(variance)

# Probability
tosscoin(3) # Bir madeni para ?? kez at?l?r
tosscoin(3,makespace = T) # Herbir sat?r?n olas?l?klar?n? verir
rolldie(2) # bir zar iki kez at?l?r.
rolldie(2,makespace = T) # Herbir sat?r?n olas?l?klar?n? verir

 #?rnek 5.44
urnsamples(1:3,size=2,replace=T,ordered=T)  # yerine koyarak 2 b?y?kl?g?nde ?rneklem ?eker.(siralama ?nemli)
urnsamples(1:3,size=2,replace=F,ordered=T)  #yerine koymadan2 b?y?kl?g?nde ?rneklem ?eker.(siralama ?nemli)
urnsamples(1:3,size=2,replace=T,ordered=F)  #yerine koyarak 2 b?y?kl?g?nde ?rneklem ?eker.(siralama ?nemsiz)
urnsamples(1:3,size=2,replace=F,ordered=F)  #yerine koymadan 2 b?y?kl?g?nde ?rneklem ?eker.(siralama ?nemsiz)

#?rnek 5.45
nsamp(n=3,k = 2,replace = T,ordered = T)# ?rneklem b?y?kl?klerini verir.
nsamp(n=3,k = 2,replace = F,ordered = T)# ?rneklem b?y?kl?klerini verir.
nsamp(n=3,k = 2,replace = F,ordered = F)# ?rneklem b?y?kl?klerini verir.  