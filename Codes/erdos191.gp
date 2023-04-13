/*
Let f(i, j) denotes number of paths from (0, 0) to (i, j)
if i = 0 or j = 0, f(i, j) = 1
otherwise f(i, j) = f(i - 1, j) + f(i, j - 1) + f(i - 1, j - 1)

f(n, n) = 1, 3, 13, 63, 321, 1683, 8989, 48639, ... =>
OEIS A001850
f(n, n) = sum(k = 0, n, C(n, k) * C(n + k, k))
        = sum(k = 0, n, (n+k)!/(n-k)!/(k!)^2)
*/


f(i, j) = {
    if (i == 0 || j == 0,
        return(1),
        return(f(i - 1, j) + f(i, j - 1) + f(i - 1, j - 1));
    );
}


{
N = 10^7;
M = 1000000007;
s = Mod(1, M);
x = Mod(1, M);
for (k = 1, N,
    x *= Mod(N + k, M) * Mod(N - k + 1, M) / Mod(k, M)^2;
    s += x;
);
ans = lift(s);
print(ans);
}
