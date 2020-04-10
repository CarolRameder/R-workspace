ztest=function(alfa,n,sigma,x,miu,tiptest)
{
  
  z_score = (miu - x)/(sigma/sqrt(n))
  
  
  if(tiptest=='stg')
  {z=qnorm(alfa)
  
  if(z_score<z)
    print("Ipoteza nula este respinsa!")
  else
    print("Ipoteza nula")
  }
  
  if(tiptest=='drp')
  {z=qnorm(1-alfa)
  if(z_score>z)
    print("Ipoteza nula este respinsa !")
  else
    print("Ipoteza nula")
  
  }
  
  if(tiptest=='simetric')
  {z=qnorm(1-alfa/2)
  if(abs(zscor)>abs(z))
    print("Ipoteza nula este respinsa !")
  else
    print("Ipoteza nula")
  }
  
}

ztest(0.05,49,144,88,90,'drp')

ztest(0.01,36,17,85,75,'drp')