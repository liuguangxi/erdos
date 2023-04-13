{
N = 99999999999999;
M = 999999999;
P = 1000000007;
ans = Mod(M, P)^N - Mod(M, P)*(Mod(M, P) - 1)^(N - 1);
print(lift(ans));
}
