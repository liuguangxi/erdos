/*
10^k <= 2^n < 2*10^k =>
k <= n * log10(2) <= log10(2) + k =>
0 <= {n*log10(2)} < log10(2)
because {n*log10(2)} ~ U(0, 1) =>
limit_{n->inf} {a(n)/n} = log10(2)
*/


{
lim = log(2)/log(10);
ans = floor(lim * 10^6);
print(ans);
}
