{
/* Calculate g(f(42, 111111111111111)) */
flog = sum(k = 1, 100, log(42 - 1 + k)/2^k);
f1 = exp(flog);
g1 = ceil(f1);

/* Calculate g(f(g1, 222222222222222)) */
flog = sum(k = 1, 100, log(g1 - 1 + k)/2^k);
f2 = exp(flog);
g2 = ceil(f2);

/* Calculate h(x) */
x = g2;
ans = 2^x % 1000000007;
print(ans);
}
