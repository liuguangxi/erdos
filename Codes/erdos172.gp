{
f = Mod(1 + 5*x + 6*x^2 + 3*x^3 + 10*x^4 + 11*x^5 - 19*x^6 - 2*x^7, 100086841);
g = Mod(x^5 - 1, 100086841);
e = lift(Mod(18, 100086840)^(10^18));
R = lift(Mod(f, g)^e);
S = vecsum(Vec(R));
ans = lift(S);
print(ans);
}
