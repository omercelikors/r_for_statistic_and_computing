

# Geometrik Dagilim 
# ?rnek 6.22 : Bir at?c?n?n her at??ta hedefi vurma olas?l???n?n ayn? ve 3/4 oldu?u biliniyor. 
# at?c?n?n hedefi ilk kez d?rd?nc? at??ta vurma olas?l???n? bulunuz.
    # X~Geo 
    dgeom(3,prob = 3/4) # 4. denemede ilk basarinin gelmesi olasiligi
    
# Negatif Binom dagilimi 
    #  ?rnek 6.6 : Hilesiz bir zar 5 kez at?l?yor. Be? kez at??ta 3 kez 1 gelmesi olas?l??? nedir?
    
    dnbinom(2,3,prob=1/6) # dbinom(basarisizlik sayisi, basari sayisi, basari olasiligi (basarisizlik sayisi+basari sayisi toplandiginda deneme sayisini verir.))
  
# Negatif Binom dagilimi
    
    # ?rnek 6.7 : Bir zar alt? kez ?ift say? gelinceye kadar at?l?yor.   
    # On at??ta alt? kez ?ift say? elde etme olas?l??? nedir?
    
  dnbinom(4,6,prob=1/2) 
    
#Poisson Dagilimi X~Poi(lambda)
  
  # ?rnek 6.23 : Ge?mi?teki kay?tlardan Ankara'n?n belli bir b?lgesinde bir g?n i?indeki araba kazalar?n?n say?s?n?n 
  # ortalama olarak 2.6 oldu?u g?r?lm??t?r. Bir g?n i?indeki araba kazalar?n?n say?lar? Poisson da??l?m?na sahiptir.
  
  dpois(0,2.6)               # a) hi? kaza olmamasi olasiligini verir.
  1-ppois(4,2.6)             # b) En az 5 kaza olmasi olasiligini verir.
  ppois(6,2.6)-ppois(1,2.6)  # c) Kaza sayisinin 2 ile 6 arasinda olmasi olasiligi(2 ile 6 dahil)
  
  
 
  
  
  
  
