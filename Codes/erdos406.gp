/*
S = sum(p = 0, n, s(p))
  = sum(p = 0, n, sum(i = 0, 2^m-1, f(bitand(i,p))))
  = sum(p = 0, n, sum(i = 0, 2^m-1, bitxor(bitand(i,p),c)))
  = (n+1)*2^m*(c-1) + n*(n+1)/2*2^(m-1) + (n+1)\2*2^m
*/


{
M = 998244353;
n = 2026^4;
m = 1234567891011;
c = ((Mod(2, M)^(2026^2) - 1) / (Mod(2, M)^2026 - 1))^2;
ans = (n+1)*Mod(2, M)^m*(c-1) + n*(n+1)/2*Mod(2, M)^(m-1) + ((n+1)\2+1)*Mod(2, M)^m;
print(lift(ans));
}
