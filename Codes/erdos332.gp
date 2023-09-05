/*
E = E(X^2) / E(X)
  = int(x^2 * 5*exp(-5*x), x, [0, inf]) / int(x * 5*exp(-5*x), x, [0, inf])
  = 2/5
*/


{
E = 2/5;
ans = E % 1000000007;
print(ans);
}
