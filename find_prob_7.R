

#Örnek 6.24: X~Uniform(0,5)
    punif(3,0,5)                      # P(X<3) olasiligini hesaplar.
    punif(4,0,5)-punif(2,0,5)         # P(2<X<4) olasiligini hesaplar.
  
    
#Örnek 6.25: X~Exp(4/5)
    pexp(2,4/5)                       # P(X<2) olasiligini hesaplar.
    pexp(5,4/5)-pexp(1,4/5)           # P(1<X<5) olasiligini hesaplar. 
    
    
#örnek 6.26 X~Normal(0,1)
    pnorm(0.75,0,1)                   # P(Z<0.75) olasiligini hesaplar.
    
    xlim=c(-3,3)                      # Standard normal daðýlým eðrisi çizdirip, 
    #üzerinde P(Z<0.75) olasýlýðýný veren alaný göstermek için
    codx=c(-3,seq(-3,0.75,0.01),0.75) #(-3,0.75) aralýðýnda 0.01 arttýrarak deðerleri oluþturur.
    cody=c(0,dnorm(seq(-3,0.75,0.01)),0) # (-3,0.75) aralýðýnda oluþturduðu deðerlere 
    #karþýlýk gelen olasýlýklarý yazar.(Normal daðýlým için)
    curve(dnorm(x,0,1),xlim=c(-3,3),main='standard normal') 
    # Grafiðin satýr ve sütunlarýný oluþturur.
    polygon(codx,cody,col='red')
    
    1-pnorm(2,0,1)                    # P(Z>2) olasiligini hesaplar.
    
    xlim=c(-3,3)
    # Standard normal daðýlým eðrisi çizdirip, 
    #üzerinde P(Z>2) olasýlýðýný veren alaný göstermek için
    codx=c(2,seq(2,3,0.01),3)
    cody=c(0,dnorm(seq(2,3,0.01)),0)
    curve(dnorm(x,0,1),xlim=c(-3,3),main='standard normal')
    polygon(codx,cody,col='blue')
    
    pnorm(2.35,0,1)-pnorm(1.2,0,1)    # P(1.2<Z<2.35) olasiligini hesaplar.
    
    xlim=c(-3,3)                      
    # Standard normal daðýlým eðrisi çizdirip, 
    #üzerinde P(Z>2) olasýlýðýný veren alaný göstermek için
    codx=c(1.2,seq(1.2,2.35,0.01),2.35)
    cody=c(0,dnorm(seq(1.2,2.35,0.01)),0)
    curve(dnorm(x,0,1),xlim=c(-3,3),main='standard normal')
    polygon(codx,cody,col='gray')
    
    
#Örnek Gamma Dagilimi        # X~Gamma(alpha=1,beta=5/4) Bu dagilim Exp(4/5)tir. 
    pgamma(2,1,scale=5/4)            # P(X<2) olasiligini hesaplar.
    
    
#Örnek Beta Dagilimi          # X~Beta(alpha=1,beta=1 Bu dagilim Uniform(0,1)tir. 
    pbeta(0.75,shape1=1,shape2=1)     # P(X<0.75) olasiligini hesaplar.

  
