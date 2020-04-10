library(numbers)

x = "00111101"
y = "11011001001111010001110"
verif = function(x, y){ 
  n = nchar(x)
  m = nchar(y)
  var = as.integer((n^2) * m * log( (n^2) * m ))
  
  Pr = Primes( var )
  p = sample(Pr, 1)
  r = as.integer(x) %% p
  
  for(j in 1:(m-n+1)){
    var1 = substring(y , j, n+j-1)
    var2 = as.integer(substring(y , j, n+j-1)) %% p
    if(var1==x & var2==r)
      return(j)
  }
}
#prima aparitie este de la pozitia
verif(x, y)
