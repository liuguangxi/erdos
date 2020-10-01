{
N = 202020;
K = 100;
t = binomial(K, K - 3);
s = t * (K - 3) + (N - t) * K;
print(s);
}
