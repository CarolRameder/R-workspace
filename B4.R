main=function(var){
  S=0
  for(i in 1:var){
    G1=rgamma(1, shape=6, scale=4)#dist1
    G2=rgamma(1, shape=5, scale=3)#dist2
    sel= sample(c(1, 2), 1, prob = c(0.35, 0.65))
    if(sel){
      S = S + G1
    }
    else{
      S = S + G2
    }
    lt = rexp(1,1)
    S = S + lt
  }
  return (S/var)
}
main(3000)


