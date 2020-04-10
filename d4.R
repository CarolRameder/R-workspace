main = function(alfa){
  suc = 48
  tot = 100
  proc = suc / tot
  Pin = 0.509
  zScore = (p_prim - Pin)/sqrt(Pin*(1 - Pin)/tot)
  alfa
  zStar = qnorm(alfa, mean=0, sd=1)
  print(paste(zScore, zStar))
  
  }

main(0.01)
main(0.05)




