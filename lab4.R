# exercitiul 2 rezolvat
treeEval = function(i, leaves)
{
  a = runif(1, 0, 1);
  len = length(leaves);
  if (log(i,2) >= log(len,2)-1)
  {
    if (a <= 0.5)
    {
      if (leaves[2*i-len+1] == 0)
      {
        return (leaves[2*i+1-len+1]);
      }
      return (1);
    }
    else
    {
      if (leaves[2*i+1-len+1]==0)
      {
        return (leaves[2*i+1-len+1]);
      }
      return (1);
    }
  }
  if ((floor(log(i,2))%%2 ==0)) # nodul este de tip MIN
  {
    if (a <= 0.5)
    {
      if (treeEval(2*i, leaves) == 1)
      {
        return (treeEval(2*i+1, leaves));
      }
      return (0);
    }
    else
    {
      if (treeEval(2*i+1, leaves) == 1)
      {
        return (treeEval(2*i, leaves));
      }
      return (0);
    }
  }
  if (a <= 0.5)
  {
    if (treeEval(2*i, leaves) == 0) 
    {
      return (treeEval(2*i+1, leaves));
    }
    return (1); # 1 or orice = 1
  }
  else
  {
    if (treeEval(2*i+1, leaves) == 0)
    {
      return (treeEval(2*i, leaves));
    }
    return (1);
  }
}
leaves = c(0, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0);

gameTreeEval = function(leaves)
{
  return (treeEval(1, leaves));
}
gameTreeEval(leaves);


