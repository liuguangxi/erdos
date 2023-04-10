/*
a(k) = 1/(k*(k+2)) = 1/2*(1/k - 1/(k+2))
when n is even
sum(k = 1, n, a(k))
= sum(k = 1, n, 1/2*(1/k - 1/(k+2)))
= 1/2 * (1/1 + 1/2 - 1/(n+1) - 1/(n+2))
= (3*n^2 + 5*n)/(4*n^2 + 12*n + 8)
=> S(n) = ((3*n^2 + 5*n)/(4*n^2 + 12*n + 8))^2
*/


{
n = 112358;
s = ((3*n^2 + 5*n)/(4*n^2 + 12*n + 8))^2;
p = numerator(s);
q = denominator(s);
ans = p * q;
print(ans);
}
