{
M = 10^9+7;
N = 10^7;
Hn = vector(N, i, Mod(1/i, M));
for (i = 2, N, Hn[i] += Hn[i-1]);
s = 0;
forprime (p = 2, N, s += p * Hn[p]);
s /= primepi(N);
ans = lift(s);
print(ans);
}
