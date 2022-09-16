/*
OEIS A192021
f(n) = 2^(n-1)*(1+2^n*(n-1))
*/


{
M = 10^9+7;
N = 1234567654321;
s = Mod(2,M)^(N-1)*(1+Mod(2,M)^N*(N-1));
print(lift(s));
}
