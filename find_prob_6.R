

# Geometrik Dagilim 
# Örnek 6.22 : Bir atýcýnýn her atýþta hedefi vurma olasýlýðýnýn ayný ve 3/4 olduðu biliniyor. 
# atýcýnýn hedefi ilk kez dördüncü atýþta vurma olasýlýðýný bulunuz.
    # X~Geo 
    dgeom(3,prob = 3/4) # 4. denemede ilk basarinin gelmesi olasiligi
    
# Negatif Binom dagilimi 
    #  örnek 6.6 : Hilesiz bir zar 5 kez atýlýyor. Beþ kez atýþta 3 kez 1 gelmesi olasýlýðý nedir?
    
    dnbinom(2,3,prob=1/6) # dbinom(basarisizlik sayisi, basari sayisi, basari olasiligi (basarisizlik sayisi+basari sayisi toplandiginda deneme sayisini verir.))
  
# Negatif Binom dagilimi
    
    # örnek 6.7 : Bir zar altý kez çift sayý gelinceye kadar atýlýyor.   
    # On atýþta altý kez çift sayý elde etme olasýlýðý nedir?
    
  dnbinom(4,6,prob=1/2) 
    
#Poisson Dagilimi X~Poi(lambda)
  
  # örnek 6.23 : Geçmiþteki kayýtlardan Ankara'nýn belli bir bölgesinde bir gün içindeki araba kazalarýnýn sayýsýnýn 
  # ortalama olarak 2.6 olduðu görülmüþtür. Bir gün içindeki araba kazalarýnýn sayýlarý Poisson daðýlýmýna sahiptir.
  
  dpois(0,2.6)               # a) hiç kaza olmamasi olasiligini verir.
  1-ppois(4,2.6)             # b) En az 5 kaza olmasi olasiligini verir.
  ppois(6,2.6)-ppois(1,2.6)  # c) Kaza sayisinin 2 ile 6 arasinda olmasi olasiligi(2 ile 6 dahil)
  
  
 
  
  
  
  
