/*
f(r, n) = [r | n] =>
B = sum(i = 1, n, sum(j = 1, n, f(i, j)))
  = sum(i = 1, n, n \ i)
  = 2 * sum(i = 1, nsqrt, n \ i) - nsqrt^2
where nsqrt = floor(sqrt(n))
*/


{
N = 10^12;
M = 998244353;
nsqrt = sqrtint(N);
s = 2 * sum(i = 1, nsqrt, N \ i) - nsqrt^2;
ans = s % M;
print(ans);
}
