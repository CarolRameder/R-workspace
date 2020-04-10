library(numbers)

s = "111000101"
S = c("1110011100","0001000010","111000101","110","110110110","001000100010","111000110")

C2 = function(r,q,S){
  var = length(S)
  S = as.integer(S) %% q
  for(i in 1:var){
    if(S[i]==r)
      return(1)
  }
  return(0)
}
Verif = function(s, S){
  n = nchar(s)
  cond = n * n
  Pr = Primes( cond )
  q = sample(Pr, 1)
  r = as.integer(s) %% q
  return(C2(r,q,S))
}

if(Verif(s, S)!=1) {
  print("s nu apare in S");
} else {
  print("s apare in S");
}