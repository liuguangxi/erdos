/*
OEIS A000108
C(n) = binomial(2*n, n)/(n+1)
*/


{
N = (6969+1)/2;
M = 10^9+7;
s = binomial(2*N, N)/(N+1) % M;
print(s);
}
