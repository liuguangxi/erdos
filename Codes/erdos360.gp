/*
C(n) = n * d(n), where d(n) = number of divisors of n
F(n) = sum(i = 1, n, d(n)) = sum(i = 1, n, floor(n/i))
=>
x = sum(k = 1, inf, F(k)/k/2^k) = sum(k = 1, inf, sum(i = 1, k, k\i)/k/2^k)
*/


{
x = sum(k = 1, 100, sum(i = 1, k, k\i)*1.0/(k*2^k));
ans = floor(x * 10^5);
print(ans);
}
