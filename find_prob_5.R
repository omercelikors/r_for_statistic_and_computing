


    dbinom(3,size = 10,prob = 0.53)   # a) P(X=3) olasiligini hesaplar.
    pbinom(3,size = 10,prob = 0.53)   # b) P(X<=3) olasiligini dagilim fonksiyonunu kullanarak hesaplar.
      p<-sum(dbinom(0:3,10,0.53))     # b)P(X<=3) olasiligini olasilik fonksiyonunu kullanarak hesaplar.
    p<-sum(dbinom(9:10,10,0.53))      # c) 1. yol : P(X>8) olasiligini olasilik fonksiyonunu kullanarak hesaplar.
    1-pbinom(8,size = 10,prob = 0.53) # c) 2. yol : P(X>8) olasiligini dagilim fonksiyonunu kullanarak hesaplar.
    

    
    x<-c(0:5)
    plot(x,dbinom(x,size = 5, prob = 0.5), type = "p") #rassal degiskenin herbir degerine karsilik gelen olasiliklari nokta seklinde gösterir.
    plot(x,dbinom(x,size = 5, prob = 0.5), type = "l") #rassal degiskenin herbir degerine karsilik gelen olasiliklari çizgi seklinde gösterir.
    plot(x,dbinom(x,size = 5, prob = 0.5), type = "o") #rassal degiskenin herbir degerine karsilik gelen olasiliklari nokta-çizgi seklinde gösterir.
    plot(x,dbinom(x,size = 5, prob = 0.5), type = "b") #rassal degiskenin herbir degerine karsilik gelen olasiliklari kesikli nokta-çizgi seklinde gösterir.
    plot(x,dbinom(x,size = 5, prob = 0.5), type = "c") #rassal degiskenin herbir degerine karsilik gelen olasiliklari kesikli çizgi seklinde gösterir.
    plot(x,dbinom(x,size = 5, prob = 0.5), type = "s") #rassal degiskenin herbir degerine karsilik gelen olasiliklari step function seklinde gösterir.
    plot(x,dbinom(x,size = 5, prob = 0.5), type = "S") #rassal degiskenin herbir degerine karsilik gelen olasiliklari step function seklinde gösterir.
    plot(x,dbinom(x,size = 5, prob = 0.5), type = "h") #rassal degiskenin herbir degerine karsilik gelen olasiliklari histogram seklinde gösterir.
    
  

  
  
  dhyper(2,4,6,3) # dhyper(istenen basari sayisi, rassal degisken(hatali ürün sayisi) olarak tanimlanan birim sayisi, hatasiz ürün sayisi, sample size)
  dhyper(3,4,6,3)
  phyper(1,4,6,3) 
  1-phyper(1,4,6,3)  
  
  
