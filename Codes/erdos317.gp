{
M = 1234567891;
N = 1000005;
R = 1000005;

v = Vec(factorback(vector(R - 1, i, Mod(x - i, M))));
lv = #v;
for (i = 1, lv, if (i % 2 == 0, v[i] = -v[i]));
s = Mod(0, M);
for (i = 1, lv, s = (s + v[i]) * N);
fac = factorback(vector(R, i, Mod(i, M)));
res = lift(s / fac);
print(res);
}
