p2.2=function(alfa,sigma,len,media)
{
  z=qnorm(1-alfa/2)
  a=media-z*sigma/sqrt(len)
  b=media+z*sigma/sqrt(len)
  v=c(a,b)
  v
}p2.2(0.1,10,25,67.53)

p2.4=function(alfa,sigma,len,media)
{
  z=qnorm(1-alfa/2)
  a=media-z*sigma/sqrt(len)
  b=media+z*sigma/sqrt(len)
  v=c(a,b)
  v
}
p2.4(0.01, 1280, 100, 140)


p4= function(alfa, medie, n, sigma) {
  
  se = sigma/sqrt(n)
  critical_t = qt(1-alfa/2, n-1)
  a = medie - critical_t * se
  b = medie + critical_t * se
  interval = c(a,b)
  interval
}

p4(0.05, 3.3, 60, 0.4)



p5=function(p0,n,succes,alfa)
{
  p=p0; 
  pprim=succes/n
  z = (pprim - p0) / sqrt(p0*(1-p0)/n)
  z = qnorm(1 - alfa, 0, 1)
  z
  
  
  
}
p5(0.01, 100, 63, 0.6)


p52 = function(p0,n,succes,alfa)
{
  p=p0;
  pprim=succes/n
  z=qnorm(1-alfa)
  z
}
p52(0,150,20,0.05)

ex5.3=function(p0,n,succese,alfa,tiptest)
{
  pprim=succese/n
  zscor= (pprim - p0) / sqrt(p0*(1-p0)/n)
  if(tiptest=='left')
  {
    z=qnorm(alfa)
  }
  if(tiptest=='right')
  {
    z=qnorm(1-alfa)
  }
  if(tiptest=='simetric')
  {
    z=qnorm(1-alfa/2)
  }
  if(tiptest=='left' && zscor<z) print("! Ipoteza nula !")
  if(tiptest=='right' && zscor>z) print("! Ipoteza nula !")
  if(tiptest=='simetric' && abs(zscor)<abs(z)) print("! Ipoteza nula !")
  
}
ex5.3(0.01,42,17,0.25,'right')