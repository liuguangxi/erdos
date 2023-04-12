{
n = 10^8; m = 34117; t = 1000;
p = m/n*1.;
e0 = 0;
forstep (k = 0, t, 2, e0 += binomial(t, k) * p^k * (1-p)^(t-k));
e = e0 * n;
ans = floor(e);
print(ans);
}
