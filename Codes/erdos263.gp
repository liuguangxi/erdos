/*
m = 2^k - 2
s = sum(t = 0, n, t^2*binomial(n,t)*m^(n-t))
  = (m+1)^(n-2)*n*(m+n)
*/


{
M = 10^9+7;
n = 2718281828;
k = 3141592653;
m = Mod(2, M)^k - 2;
s = (m+1)^(n-2)*n*(m+n);
print(lift(s));
}
