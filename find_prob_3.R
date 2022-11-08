.libPaths("C:/Users/Public/R/win-library/4.0") # Paketlerin yükleneceði adresi belirliyor
# Önce .libPaths çalýþtýrýlýp daha sonra install.packages ile istenen paket yüklenebilir.


#Ders 4

#Sample Variance is an unbiased estimator of Pop. variance
install.packages("prob") #prob paketini yükler.
library(prob)            #prob paketini çalistirilabilir duruma getirir.
urnsamples(c(0,2,4),size=2,replace=T,ordered=T)   #girilen degerlerin içinden istenilen büyüklükte olasi tüm örneklemleri çeker.
samples<-urnsamples(c(0,2,4),size=2,replace=T,ordered=T)  #çekilen örnekleri samples degiskenine atar.
samples<-as.matrix(samples) #samples degiskenini matrise dönüstürür.
variance<-numeric()         #bos vektör tanimlar.
for(i in 1:9){              #satir varyanslarini hesaplatmak için olusturulan döngüdür. 
  variance[i]<-var(c(samples[i,]))   #herbir satirda hesaplanan varyanslari, variance vektörüne atar.
}
mean(variance)

# Probability
tosscoin(3) # Bir madeni para üç kez atýlýr
tosscoin(3,makespace = T) # Herbir satýrýn olasýlýklarýný verir
rolldie(2) # bir zar iki kez atýlýr.
rolldie(2,makespace = T) # Herbir satýrýn olasýlýklarýný verir

 #Örnek 5.44
urnsamples(1:3,size=2,replace=T,ordered=T)  # yerine koyarak 2 büyüklügünde örneklem çeker.(siralama önemli)
urnsamples(1:3,size=2,replace=F,ordered=T)  #yerine koymadan2 büyüklügünde örneklem çeker.(siralama önemli)
urnsamples(1:3,size=2,replace=T,ordered=F)  #yerine koyarak 2 büyüklügünde örneklem çeker.(siralama önemsiz)
urnsamples(1:3,size=2,replace=F,ordered=F)  #yerine koymadan 2 büyüklügünde örneklem çeker.(siralama önemsiz)

#Örnek 5.45
nsamp(n=3,k = 2,replace = T,ordered = T)# örneklem büyüklüklerini verir.
nsamp(n=3,k = 2,replace = F,ordered = T)# örneklem büyüklüklerini verir.
nsamp(n=3,k = 2,replace = F,ordered = F)# örneklem büyüklüklerini verir.  