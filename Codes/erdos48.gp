/*
https://en.wikipedia.org/wiki/Pisano_period
if n = 2^k, then P(n) = 3*2^(k-1)
if n = 5^k, then P(n) = 20*5^(k-1)
n = 10^k = 2^k * 5^k and gcd(2^k, 5^k) = 1
*/


{
k = 8;
ans = lcm(3*2^(k-1), 20*5^(k-1));
print(ans);
}
