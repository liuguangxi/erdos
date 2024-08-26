/* E(k) = k*2^(k-1)/(2^k+1) */


{
M = 10^9+7;
k = 12345678987654321;
Ek = k*Mod(2,M)^(k-1)/(Mod(2,M)^k+1);
ans = lift(Ek);
print(ans);
}
