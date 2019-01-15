{
N = 10^6;
s = sum(k = 1, N\2, N\k-1);
p = s/binomial(N, 2);
ans = numerator(p) + denominator(p);
print(ans);
}
