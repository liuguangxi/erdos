/*
f(n, x) = binomial(2*n, n) - binomial(2*n, n-x)
*/


{
N = 100000;
P = 10^9 + 7;

vfac = vector(2*N); vfac[1] = Mod(1, P);
for (i = 2, 2*N, vfac[i] = vfac[i - 1] * i);

s = 0;
t = vfac[2*N] / vfac[N]^2;
for (i = 1, N - 1,
    s += t - vfac[2*N]/vfac[N-i]/vfac[N+i];
);
s += t - Mod(1, P);
print(lift(s));
}
