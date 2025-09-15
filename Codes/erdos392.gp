{
M = 1000000007;
C = 0.98;
E = round(1/(1 - C))^2;
ans = lift(Mod(E, M)^E);
print(ans);
}
