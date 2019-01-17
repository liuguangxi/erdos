{
N = 123; K = 321;
M = 10^9+7;

f = matrix(K+1, N); f[1,1] = Mod(1, M);
for (n = 2, N,
    print("n = ", n);
    f2 = matrix(K+1, N);
    kmax = min(binomial(n-1, 2), K);
    for (k = 0, kmax, for (last = 1, n - 1, for (x = 1, n,
        if (x <= last,
            if (k+n-1 <= K, f2[k+n,x] += f[k+1,last]),
            f2[k+1,x] += f[k+1,last];
        );
    )));
    f = f2;
);
ans = vecsum(f[K+1,]);
print(lift(ans));
}
