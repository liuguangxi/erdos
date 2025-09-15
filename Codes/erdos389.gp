f(n) = {
    my(z, k, x, ret);
    if (mapisdefined(Ms, n, &z), return(z));
    k = mapget(Mfib, n); x = fibonacci(k);
    ret = (n - x) * 2^(k - 2) + f(n - x) + f(x);
    mapput(Ms, n, ret);
    return(ret);
}


{
M = 1000000007;
K = 69;

Mfib = Map();
for (i = 2, K, mapput(Mfib, fibonacci(i), i - 1));
Ms = Map();    \\ Ms[n] is sum(i = 1, n-1, g(f_i))
mapput(Ms, 1, 0); mapput(Ms, 2, 1);

s = 2^(K-2) + f(fibonacci(K));
ans = s % M;
print(ans);
}
