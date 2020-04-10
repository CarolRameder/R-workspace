tot = 196
a = 1 - 0.99 
med = 35
sig = sqrt(16)
zStar = qnorm(1 - a/2, mean=0, sd=1)

a = med - zStar * sig/sqrt(tot)
b = med + zStar * sig/sqrt(tot)

interval = c(a,b)
interval

