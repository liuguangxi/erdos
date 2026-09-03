/*
Has solution iff x = 1, 2^e, 2^e*3^f
  x = 1 => phi(x) = 1, #k = N
  x = 2^e (e >= 1) => phi(x) = 2^(e-1)
    t = N\2^(e-1), #k = t - t\2
  x = 2^e*3^f (e >= 1, f >= 1) => phi(x) = 2^e*3^(f-1)
    t = N\(2^e*3^(f-1)), #k = t - t\3
*/


{
N = 10^18;
M = 998244353;

\\ x = 1
s = N;

\\ x = 2^e
emax = logint(N, 2);
for (e = 1, emax, t = N\2^(e-1); s += t - t\2);

\\ x = 2^e*3^f
for (e = 1, emax,
    n = 2^e * 3;
    while (n <= N,
        t = N\(n/3); s += t - t\3;
        n *= 3;
    );
);

ans = s % M;
print(ans);
}
