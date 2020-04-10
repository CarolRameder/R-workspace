Vol=function(N){
  M_C = 0
  r=sqrt(2)
  for(i in 1:N){
    u = runif(1, -r, r)
    v = runif(1, -r, r)
    w = u*u + v*v
    if(w <= 2 ){
      M_C = M_C + 1
    }
  }
  mypi = 8*M_C/N
  return (mypi)
}

vol=pi*2
print(vol)

e1 = Vol(10000)
print(e1)
print(abs(vol-e1)/abs(vol))

e2 = Vol(20000)
print(e2)
print(abs(vol-e2)/abs(vol))

e3 = Vol(50000)
print(e3)
print(abs(vol-e3)/abs(vol))
