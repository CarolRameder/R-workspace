x<-rnorm(100)
plot(x,x/2,type="l",xlab="X",ylab="Y")
lines(x,2/3*x)
lines(x,3 - ((3/2) * x))

#obs ca 0 <= x <= 2 si 0 <= y <= 1
#incadram triunghiul intr-un dreptunghi de 2X1
aria_tri=function(N){
  M_C = 0
  for(i in 1:N){
    x = runif(1, 0, 2.0)
    y = runif(1, 0, 1.0)
    c1=x-2*y
    c2=2*x-3*y
    c3=3*x+2*y
    if(c1 <= 0 & c2 >=0 & c3 <= 6){
      M_C = M_C + 1
    }
  }
  val = M_C/N
  #2=aria dreptunghiului
  return (2 * val)
}

v=aria_tri(10000)
print(v)


