/*
A = [a1, a2, ..., an]
F(x) = a1 + a2*x + ... + an*x^(n-1)
(n-1)th forward difference array of A = [x^(n-1)]F(x)*(1-x)^(n-1)
*/


{
M = 1000000007;
N = 3901585;
v1 = vectorsmall(N, i, lift(Mod(i, M)^i));
v2 = vectorsmall(N, i, 1);
t = Mod(1, M);
for (i = 1, N - 1, t *= -(N-i)/i; v2[i + 1] = lift(t));
ans = sum(i = 1, N, v1[i] * v2[N+1-i]) % M;
print(ans);
}
