{
N = 101;
Vc = vector(N);
f = O(x^(N+1));
for (i = 1, N,
    f += x^i;
    g = 2 * f / (1 - f);
    Vc[i] = polcoef(g, N);
);
forstep (i = N, 2, -1, Vc[i] -= Vc[i - 1]);
prob = sum(i = 1, N, Vc[i] * i) / 2^N;
ans = prob % 1234567891;
print(ans);
}
