/*
Let Sf(n) = sum(i = 0, n, f(i)), Sg(n) = sum(i = 0, n, f(i)*Sf(i)) =>
S(n) = sum(i = 1, n, sum(j = 0, i - 1, sum(k = j + 1, i, f(i)*f(j)*f(k))))
     = sum(i = 1, n, sum(j = 0, i - 1, f(j)*(Sf(i) - Sf(j))))
     = sum(i = 1, n, f(i)*(Sf(i)*Sf(i-1) - Sg(i-1)))
*/


{
M = 1000000007;
N = 1234567;

Vf = vectorsmall(N); Vf[1] = Vf[2] = 1;
for (i = 3, N, Vf[i] = (Vf[i - 1] + Vf[i - 2]) % M);
VSf = Vf;
for (i = 2, N, VSf[i] = (VSf[i] + VSf[i - 1]) % M);
VSg = vectorsmall(N, i, Vf[i] * VSf[i] % M);
for (i = 2, N, VSg[i] = (VSg[i] + VSg[i - 1]) % M);

S = Mod(0, M);
for (i = 2, N,
    S += Vf[i] * (VSf[i] * VSf[i - 1] - VSg[i - 1]);
);
print(lift(S));
}
