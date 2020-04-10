#P1.4-Repartitie bin, grafic fc.

Bn=function(a,b){
  x=seq(0,a,1)
  y=dbinom(x,a,b)
  plot(x,y)
  y
}
Bn(10, 0.3)

Pois=function(L,a){
  x=seq(0,a,1)
  y=dpois(x,L)
  plot(x,y)
  y
}
Pois(2,10)
#lambda poz

Gm=function(a,b){
  x=seq(0,b,1)
  y=dgeom(x,a)
  plot(x,y)
  y
}
Gm(0.2,20)

x=scan("1.txt")
x

med=mean(x)#med
print(med)
print(median(x))
dev=sd(x)#deviatia
print(dev) 
cvart=summary(x)#cvartilele
print(cvart[2])#1
print(cvart[5])#3

Ab=vector()#aberant
i=0
for(j in 1:length(x))
   if(x[j] <m - 2*s || x[j] > m + 2*s) {
     i = i + 1
     Ab[i] = x[j]
   }
Ab
I=seq(40,110,10)
hist(x, breaks = I, right = T)





